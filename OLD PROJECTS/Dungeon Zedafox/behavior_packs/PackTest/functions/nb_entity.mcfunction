scoreboard players set @a[tag=owner] nb 0
execute @e ~ ~ ~ scoreboard players add @a[tag=owner] nb 1
titleraw @a[tag=nb_info] actionbar {"rawtext":[{"score":{"name":"@a[tag=owner]","objective":"nb"}},{"text":" entité(s)"}]}