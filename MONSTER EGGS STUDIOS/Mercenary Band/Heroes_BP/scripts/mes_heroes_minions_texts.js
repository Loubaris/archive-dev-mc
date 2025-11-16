let speechCooldown = new Map();

export function speech(entity, player) {
    if (!player) return;
    const currentTime = Date.now();
    const lastTime = speechCooldown.get(entity.id) || 0;

    const guardian_phrases = [
        "Stand behind me. I will not falter.",
        "Your safety is my purpose.",
        "I have withstood worse.",
        "Let them come. My shield shall break before my will does.",
        "No blade, no arrow, no fire shall pass while I stand.",
        "I was forged in battle, tempered by duty.",
        "A Guardian does not retreat, only advances with caution.",
        "If you fall, I will carry you. If I fall, remember me.",
        "Hold firm. We face this together.",
        "You are not alone. My shield is yours."
    ];
    const beastmaster_phrases = [
        "The forest doesn't judge. Neither do I.",
        "You smell of iron. The beasts won't trust you easily.",
        "Hurt my companions, and I'll make sure you never walk again.",
        "The wild does not bow, but it does protect its own.",
        "Every beast has its purpose. Even you.",
        "Trust in the hunt. The prey will reveal itself.",
        "You call them monsters. I call them family.",
        "This world belongs to the strong, to the cunning, to the free.",
        "A lone wolf is dangerous. A pack is unstoppable.",
        "Stay close. Nature is beautiful... and merciless."
    ]

    const archer_phrases = [
        "I don't miss. Let's make this quick.",
        "The world is my target, and it never escapes.",
        "I'd rather stay hidden, but if you need me, I'll be there.",
        "One shot, one kill. Efficiency is everything.",
        "A steady hand, a quiet breath, and patience-my three weapons.",
        "Distance is my ally. Fools who rush in don't live long.",
        "You see a battlefield. I see a puzzle with moving pieces.",
        "From the shadows, I watch. From the heights, I strike.",
        "Loose lips get cut. Loose arrows get buried in your enemies.",
        "Aim true, shoot swift, disappear."
    ]

    const rogue_phrases = [
        "I'll be gone before they even notice.",
        "In the dark, we all become equal.",
        "Don't trust anyone... not even me.",
        "Silent footsteps, quick hands, and a blade in the dark.",
        "A clean getaway is better than a messy fight.",
        "You see walls. I see opportunities.",
        "If you hear me coming, I'm already too close.",
        "Some call it dishonorable. I call it surviving.",
        "A shadow has no master, no king, no leash.",
        "Every lock has a key. Every foe has a weakness."
    ]

    const sellsword_phrases = [
        "A fight? Thought you'd never ask.",
        "I don't fight for glory - just gold. And maybe a little fun.",
        "You've got skill. Maybe enough to survive this.",
        "Coin first, questions later.",
        "A sword's only as sharp as the hand that wields it.",
        "I've seen men hesitate and die. Don't be one of them.",
        "Honor? That's what gets fools killed.",
        "You pay me, I fight. You betray me, I collect extra.",
        "Every scar tells a story. Care to trade?",
        "The battlefield is my home. The contract is my loyalty.",
    ]

    const cleric_phrases = [
        "The light of the divine will guide us through this.",
        "No wound is too great for the healing touch of faith.",
        "In times of darkness, I will be your light.",
        "The gods watch over us. I am their hand.",
        "Hope is a stronger weapon than any blade.",
        "If you fight with honor, you shall never fight alone.",
        "Faith does not make me weak. It makes me unbreakable.",
        "Even in death, I will not abandon you.",
        "A healer's burden is never light, but always worth carrying.",
        "Let the light embrace you, and let pain fade."
    ]


    if (currentTime - lastTime > 100000) {
        if (entity.typeId === "mes_heroes:guardian") {
            const phrase = guardian_phrases[Math.floor(Math.random() * guardian_phrases.length)];
            player.sendMessage("[Guardian] " + phrase);
            speechCooldown.set(entity.id, currentTime);
        }
        else if (entity.typeId === "mes_heroes:beastmaster") {
            const phrase = beastmaster_phrases[Math.floor(Math.random() * beastmaster_phrases.length)];
            player.sendMessage("[BeastMaster] " + phrase);
            speechCooldown.set(entity.id, currentTime);
        }
        else if (entity.typeId === "mes_heroes:archer") {
            const phrase = archer_phrases[Math.floor(Math.random() * archer_phrases.length)];
            player.sendMessage("[Archer] " + phrase);
            speechCooldown.set(entity.id, currentTime);
        }
        else if (entity.typeId === "mes_heroes:rogue") {
            const phrase = rogue_phrases[Math.floor(Math.random() * rogue_phrases.length)];
            player.sendMessage("[Rogue] " + phrase);
            speechCooldown.set(entity.id, currentTime);
        }
        else if (entity.typeId === "mes_heroes:sellsword") {
            const phrase = sellsword_phrases[Math.floor(Math.random() * sellsword_phrases.length)];
            player.sendMessage("[Sellsword] " + phrase);
            speechCooldown.set(entity.id, currentTime);
        }
        else if (entity.typeId === "mes_heroes:cleric") {
            const phrase = cleric_phrases[Math.floor(Math.random() * cleric_phrases.length)];
            player.sendMessage("[Cleric] " + phrase);
            speechCooldown.set(entity.id, currentTime);
        }

    }

}
