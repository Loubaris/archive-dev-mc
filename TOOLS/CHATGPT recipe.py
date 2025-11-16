import json

def generate_crafting_json(entry):
    recipes = entry.split("^")
    for recipe in recipes:
        items = recipe.split(",")
        pattern = ["   ", "   ", "   "]  # Empty 3x3 crafting grid
        key = {}
        result_item = ""
        
        for item in items:
            if item.startswith("result"):
                result_item = item.split("=")[1]
            else:
                slot, item_id = item.split("-")
                row, col = divmod(int(slot), 3)
                symbol = chr(ord('A') + len(key))
                pattern[row] = pattern[row][:col] + symbol + pattern[row][col+1:]
                key[symbol] = {"item": item_id}

        recipe_json = {
            "format_version": "1.12",
            "minecraft:recipe_shaped": {
                "description": {
                    "identifier": "crafting:recipe"
                },
                "tags": [
                    "crafting_table"
                ],
                "pattern": pattern,
                "key": key,
                "result": {
                    "item": result_item,
                    "count": 1
                }
            }
        }

        file_name = f"mes_vchl_{result_item.split(':')[-1]}_spawn_egg.json"
        with open(file_name, 'w') as file:
            json.dump(recipe_json, file, indent=4)

if __name__ == "__main__":
    entry = input("Enter crafting recipes: ")
    generate_crafting_json(entry)
