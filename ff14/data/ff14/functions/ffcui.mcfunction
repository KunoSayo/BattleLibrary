# This file with magic.... (something about idea)

execute unless score @s ffccd matches 1.. unless entity @s[tag=ffcbattle] run item replace entity @s hotbar.2 with minecraft:air

item replace entity @s[tag=ffcbattle] hotbar.0 with nether_star{display:{Lore:['"魔法 \\u00a77咏唱时间1.5s 复唱时间2.5s"', '""', '"\\u00a76闪耀的魔法技能 \\u00a7a威力：\\u00a7f100"', '"\\u00a79对目标发动\\u00a75无属性\\u00a79魔法攻击"'],"Name":"{\"text\":\"闪灼\"}}"}} 1
item replace entity @s[tag=ffcbattle] hotbar.1 with minecraft:cornflower{display:{Lore:['"魔法 \\u00a77咏唱时间1.5s 复唱时间2.5s"', '""', '"\\u00a76治疗百合"', '"\\u00a79恢复自身及周围玩家的体力"'],"Name":"{\"text\":\"\\u00a73蓝花\"}}"}} 1
execute unless score @s ffccd matches 1.. run item replace entity @s[tag=ffcbattle] hotbar.2 with grass{display:{Lore:['"能力 \\u00a77咏唱时间即时 复唱时间60.0s"', '""', '"\\u00a7a可以防风"', '"\\u00a78\\u00a7m但防不了火"', '"\\u00a78\\u00a7m但防绵羊"'], "Name":"{\"text\":\"\\u00a7a防风草\"}}"},Enchantments:[{id:"unbreaking",lvl:1}]} 1
item replace entity @s[tag=ffcbattle] hotbar.3 with ender_eye{display:{Lore:['"魔法 \\u00a77咏唱时间即时 复唱时间2.5s"', '""','"\\u00a7f普通的魔法技能 \\u00a7a威力：\\u00a7f75"', '"\\u00a79对目标发动\\u00a75无属性\\u00a79魔法攻击"'],"Name":"{\"text\":\"毁坏\"}}"}} 1
item replace entity @s[tag=ffcbattle] hotbar.4 with minecraft:heart_of_the_sea{display:{Lore:['"魔法 \\u00a77咏唱时间8.0s 复唱时间2.5s"', '""', '"\\u00a76令无法战斗的目标以完美的状态重新振作起来"', '"\\u00a78\\u00a7m令无法战斗的目标以虚弱的状态重新振作起来"'],"Name":"{\"text\":\"复活\"}}"}} 1
item replace entity @s[tag=ffcbattle] hotbar.7 with air


scoreboard players operation @s bac = @s ffccd
scoreboard players operation @s bac /= 20 consts
execute if score @s ffccd matches 1 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 1
execute if score @s ffccd matches 2 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 2
execute if score @s ffccd matches 3 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 3
execute if score @s ffccd matches 4 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 4
execute if score @s ffccd matches 5 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 5
execute if score @s ffccd matches 6 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 6
execute if score @s ffccd matches 7 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 7
execute if score @s ffccd matches 8 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 8
execute if score @s ffccd matches 9 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 9
execute if score @s ffccd matches 10 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 10
execute if score @s ffccd matches 11 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 11
execute if score @s ffccd matches 12 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 12
execute if score @s ffccd matches 13 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 13
execute if score @s ffccd matches 14 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 14
execute if score @s ffccd matches 15 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 15
execute if score @s ffccd matches 16 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 16
execute if score @s ffccd matches 17 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 17
execute if score @s ffccd matches 18 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 18
execute if score @s ffccd matches 19 run item replace entity @s hotbar.2 with minecraft:yellow_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 19
execute if score @s bac matches 1 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 1
execute if score @s bac matches 2 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 2
execute if score @s bac matches 3 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 3
execute if score @s bac matches 4 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 4
execute if score @s bac matches 5 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 5
execute if score @s bac matches 6 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 6
execute if score @s bac matches 7 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 7
execute if score @s bac matches 8 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 8
execute if score @s bac matches 9 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 9
execute if score @s bac matches 10 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 10
execute if score @s bac matches 11 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 11
execute if score @s bac matches 12 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 12
execute if score @s bac matches 13 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 13
execute if score @s bac matches 14 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 14
execute if score @s bac matches 15 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 15
execute if score @s bac matches 16 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 16
execute if score @s bac matches 17 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 17
execute if score @s bac matches 18 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 18
execute if score @s bac matches 19 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 19
execute if score @s bac matches 20 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 20
execute if score @s bac matches 21 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 21
execute if score @s bac matches 22 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 22
execute if score @s bac matches 23 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 23
execute if score @s bac matches 24 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 24
execute if score @s bac matches 25 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 25
execute if score @s bac matches 26 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 26
execute if score @s bac matches 27 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 27
execute if score @s bac matches 28 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 28
execute if score @s bac matches 29 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 29
execute if score @s bac matches 30 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 30
execute if score @s bac matches 31 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 31
execute if score @s bac matches 32 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 32
execute if score @s bac matches 33 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 33
execute if score @s bac matches 34 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 34
execute if score @s bac matches 35 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 35
execute if score @s bac matches 36 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 36
execute if score @s bac matches 37 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 37
execute if score @s bac matches 38 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 38
execute if score @s bac matches 39 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 39
execute if score @s bac matches 40 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 40
execute if score @s bac matches 41 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 41
execute if score @s bac matches 42 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 42
execute if score @s bac matches 43 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 43
execute if score @s bac matches 44 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 44
execute if score @s bac matches 45 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 45
execute if score @s bac matches 46 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 46
execute if score @s bac matches 47 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 47
execute if score @s bac matches 48 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 48
execute if score @s bac matches 49 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 49
execute if score @s bac matches 50 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 50
execute if score @s bac matches 51 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 51
execute if score @s bac matches 52 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 52
execute if score @s bac matches 53 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 53
execute if score @s bac matches 54 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 54
execute if score @s bac matches 55 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 55
execute if score @s bac matches 56 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 56
execute if score @s bac matches 57 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 57
execute if score @s bac matches 58 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 58
execute if score @s bac matches 59 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 59
execute if score @s bac matches 60 run item replace entity @s hotbar.2 with minecraft:red_wool{display:{Lore:['"\\u00a7b关注安梦梦关注安梦梦喵谢谢喵"', '"\\u00a7a关注防风草关注防风草草谢谢草"'],"Name":"{\"text\":\"\\u00a7a防风草（生长中）\"}}"}} 60
scoreboard players reset @s bac

