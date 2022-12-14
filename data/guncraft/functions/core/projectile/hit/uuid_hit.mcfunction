#> guncraft:core/projectile/hit/uuid_hit
#
# UUIDHit
#
# @within function score_damage:**

#> Temp
# @private
    #declare tag this

# AEC召喚
    execute if entity @s[type=#score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Tags:["this"],Radius:0.2f,Duration:6,Age:4,Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if entity @s[type=!#score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Tags:["this"],Radius:0.2f,Duration:6,Age:4,Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

# UUIDをコピー
    data modify entity @e[type=minecraft:area_effect_cloud,tag=this,sort=nearest,limit=1] Owner set from entity @e[tag=AttackPlayer,limit=1] UUID

# tag削除
    tag @e[tag=this] remove this