function battle:uninstall

scoreboard objectives add timeToLive dummy
scoreboard objectives add liveticks dummy
scoreboard objectives add bas dummy
scoreboard objectives add bac dummy
scoreboard objectives add bau dummy
scoreboard objectives add time dummy
scoreboard objectives add dmg dummy
scoreboard objectives add dmgcache dummy
scoreboard objectives add dmgcd dummy
scoreboard objectives add heal dummy
scoreboard objectives add healcd dummy
scoreboard objectives add gcd dummy
scoreboard objectives add chant dummy
scoreboard objectives add maxchant dummy
scoreboard objectives add dmgstats dummy
scoreboard objectives add dps dummy
scoreboard objectives add dcstats dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy


function battle:initconst


# Data
scoreboard objectives add Health health
scoreboard objectives add Death deathCount
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add run minecraft.custom:minecraft.sprint_one_cm


# Default values

scoreboard players set maxRayTraceTime bas 80
scoreboard players set forward bas 20
scoreboard players set maxHealth bas 20


# load
forceload add 0 0

# ui
scoreboard objectives setdisplay list Health
scoreboard objectives setdisplay belowName Health

# rules
gamerule maxCommandChainLength 400000
gamerule keepInventory true
gamerule doEntityDrops false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule mobGriefing false