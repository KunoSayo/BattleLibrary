tellraw @a {"text":"\u00a7e巴尔巴莉希娅发动了“咒发突袭”。"}
tp @s ~ 65 ~
function ff14:ffc/normal_phase
execute if score bsisR bau matches 1 run tp @s @e[tag=thorn, limit=1]
execute if score bsisR bau matches 1 at @s facing 0 65 0 run tp @s ~ 65 ~ ~ ~

kill @e[tag=thorn]
