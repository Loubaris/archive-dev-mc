playanimation @e[family=button] animation.wave.button_down
playanimation @e[type=zedafox:shop] animation.wave.shop_up
event entity @e[family=interface] to_kill
event entity @e[type=zedafox:article] to_death
event entity @e[name=Kaley] allowname
event entity @e[name=§rKernel] allowname

tag @a remove in_shop
tag @e[name=kaley] remove is_shopping