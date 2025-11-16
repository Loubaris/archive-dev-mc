let seconds = 0;
let countdown;
let motMystere;
let motMystereSansAccents; 
let progressMot;
let limite;
let nb_lettres;
let erreur = 0;


async function recevoir_mot() {
    const response = await fetch("https://trouve-mot.fr/api/size/" + nb_lettres);
    const data = await response.json();
    motMystere = data[0].name.toUpperCase();  
}

function removeAccents(str) {
    return str.normalize("NFD").replace(/[\u0300-\u036f]/g, "");
}

function choix_temps() {
    const temps = document.querySelectorAll("#difftemps input");
    temps.forEach((radio) => {
        if (radio.checked) {
            limite = parseInt(radio.value);
        }
    });
}

function choix_lettres() {
    const lettres = document.querySelectorAll("#difflettre input");
    lettres.forEach((radio) => {
        if (radio.checked) {
            nb_lettres = parseInt(radio.value);
        }
    });
}

function updateCounter() {
    if (seconds < limite) {
        seconds++;
        document.getElementById("timer").textContent = "Il vous reste : " + (limite - seconds) + " secondes";
    } else {
        clearInterval(countdown);
        document.getElementById("word2guess").textContent = "Temps écoulé ! Le mot était " + motMystere;
    }
}

function afficherProgressMot() {
    document.getElementById("word2guess").textContent = progressMot.join(" ");
}

function toutesLettresTrouvees() {
    return progressMot.indexOf("_") === -1;
}

async function resetJeu() {
    erreur = 0;
    choix_temps();
    choix_lettres();
    console.log("Nombre de lettres:", nb_lettres);
    console.log("Limite de temps:", limite);
    
    await recevoir_mot(); 
    motMystereSansAccents = removeAccents(motMystere);
    progressMot = Array(motMystere.length).fill("_");
    afficherProgressMot();

    clearInterval(countdown);
    seconds = 0;
    countdown = setInterval(updateCounter, 1000);

    for (let i = 1; i <= 7; i++) {
        document.getElementById(`i${i}`).style.display = "none";
    }

    const spans = document.querySelectorAll("#gchars span");
    spans.forEach(span => {
        span.classList.remove("ok", "ko");
    });
}

function demarage_page() {
    document.getElementById("newgame").classList.toggle("notplaying");
    document.getElementById("gimage").classList.toggle("notplaying");
    document.getElementById("gcontrols").classList.toggle("notplaying");
    document.getElementById("newgame").addEventListener("click", demarage_jeu);
}

function demarage_jeu() {
    document.getElementById("newgame").classList.toggle("playing");
    document.getElementById("gimage").classList.toggle("playing");
    document.getElementById("gcontrols").classList.toggle("playing");
    resetJeu();
}

function afficherPendu() {
    if (erreur > 0 && erreur <= 7) {
        document.getElementById(`i${erreur}`).style.display = "block";
    }
}

function game_over() {
    if (erreur >= 7) {
        document.getElementById("word2guess").textContent = "Trop d'erreurs! Le mot était " + motMystere;
        clearInterval(countdown);
        return true;
    }
    return false;
}

document.addEventListener("DOMContentLoaded", function () {
    const spans = document.querySelectorAll("#gchars span");

    spans.forEach(span => {
        span.addEventListener("click", function () {
            if (game_over() || seconds === limite) {
                return;
            }
            if (span.classList.contains("ok") || span.classList.contains("ko")) {
                return;
            }

            const clickedLetter = this.textContent.toUpperCase();
            const clickedLetterSansAccent = removeAccents(clickedLetter);

            if (motMystereSansAccents.includes(clickedLetterSansAccent)) {
                this.classList.add("ok");
                for (let i = 0; i < motMystere.length; i++) {
                    if (removeAccents(motMystere[i]) === clickedLetterSansAccent) {
                        progressMot[i] = motMystere[i];
                    }
                }
                afficherProgressMot();
                if (toutesLettresTrouvees()) {
                    document.getElementById("word2guess").textContent = "Bravo !!!";
                    clearInterval(countdown);
                }
            } else {
                this.classList.add("ko");
                erreur++;
                afficherPendu(); 
                game_over(); 
            }
        });
    });

    document.getElementById("restartb").addEventListener("click", resetJeu);
});

window.addEventListener("load", demarage_page);
