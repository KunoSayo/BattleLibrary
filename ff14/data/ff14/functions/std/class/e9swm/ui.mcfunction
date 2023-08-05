

execute unless score @s ffccd matches 1.. unless entity @s[tag=gaming] run item replace entity @s hotbar.2 with minecraft:air

item replace entity @s[tag=gaming, tag=!noskill] hotbar.0 with nether_star{display:{Lore:['"魔法 \\u00a77咏唱时间5.0s 复唱时间2.5s"', '""', '"\\u00a76波动诅咒 \\u00a7a威力：\\u00a7f10"', '"\\u00a79对前方30米直线发动\\u00a75无属性\\u00a79魔法攻击"'],"Name":"{\"text\":\"波动炮\"}}"}} 1
item replace entity @s[tag=gaming, tag=!noskill] hotbar.1 with minecraft:cornflower{display:{Lore:['"魔法 \\u00a77咏唱时间1.0s 复唱时间2.5s"', '""', '"\\u00a7a恢复力：\\u00a7f1"', '"\\u00a79恢复自身的体力"'],"Name":"{\"text\":\"\\u00a73救疗\"}}"}} 1
execute unless score @s ffccd matches 1.. run item replace entity @s[tag=gaming, tag=!noskill] hotbar.2 with grass{display:{Lore:['"能力 \\u00a77咏唱时间即时 复唱时间60.0s"', '""', '"\\u00a7a对范围15米内玩家造成击退效果"'], "Name":"{\"text\":\"\\u00a7a法草\"}}"}} 1
item replace entity @s[tag=gaming, tag=!noskill] hotbar.3 with ender_eye{display:{Lore:['"魔法 \\u00a77咏唱时间即时 复唱时间2.5s"', '""','"\\u00a7f普通的魔法技能 \\u00a7a威力：\\u00a7f0"', '"\\u00a79对目标发动\\u00a75嘲讽属性\\u00a79魔法攻击并获得1积分"'],"Name":"{\"text\":\"毁坏\"}}"}} 1
item replace entity @s[tag=gaming, tag=!noskill] hotbar.4 with minecraft:heart_of_the_sea{display:{Lore:['"魔法 \\u00a77咏唱时间12.0s 复唱时间2.5s"', '""', '"\\u00a76令自己的血量以完美的状态重新振作起来"', '"\\u00a78\\u00a7m令无法战斗的目标以虚弱的状态重新振作起来"'],"Name":"{\"text\":\"复活\"}}"}} 1





