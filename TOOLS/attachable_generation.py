import os
import json

names = ["automatic_laser_rifle", "big_pistol", "dimensional_transporter", "executive_pistol", "flame_thrower", "flash_rifle", "freeze_rifle", "heat_sinking_rifle", "laser", "mega_blaster", "pistol", "sniper"]  # Remplacez les noms ici

for name in names:
    file_content = {
        "format_version": "1.10.0",
        "minecraft:attachable": {
            "description": {
                "identifier": f"nitric:{name}",
                "materials": {
                    "default": "entity_alphatest_change_color"
                },
                "textures": {
                    "default": f"textures/entity/holdables/{name}"
                },
                "geometry": {
                    "default": f"geometry.{name}"
                },
                "scripts": {
                    "animate": ["controller"]
                },
                "animations": {
                    "controller": "controller.animation.ffp",
                    "first_person": f"animation.{name}.first_person",
                    "third_person": f"animation.{name}.third_person",
                    "using_item": f"animation.{name}.using_item"
                },
                "render_controllers": [
                    "controller.render.wave"
                ],
                "item": {
                    f"mes:{name}": "(1.0)"
                }
            }
        }
    }
    filename = f"{name}.json"
    directory = "mes"
    if not os.path.exists(directory):
        os.makedirs(directory)
    with open(os.path.join(directory, filename), "w") as f:
        json.dump(file_content, f, indent=4)
