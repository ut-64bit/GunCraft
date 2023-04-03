#> guncraft:core/main
#
# playerごとのtick処理
#
# @within advancement guncraft:player_tick

#> temp
# @internal
    #declare score_holder $ammo
    #declare score_holder $have_ammo
    #declare score_holder $max_ammo

tag @s add This

# スコアとnbt取得
    function guncraft:core/score_get

# リコイル
    execute if score @s GunCraft.Recoil matches 1.. at @s run function guncraft:core/recoil

# クールタイム処理
    ## トリガーが引けるように
        execute if score @s GunCraft.CoolTime matches 0 if predicate guncraft:have/gun run scoreboard players enable @s GunCraft.Trigger

    ## サウンド
        execute at @s if score @s GunCraft.CoolTime matches 1 if predicate guncraft:have/gun run function guncraft:core/sounds/reload

    ## クールタイム進行
        ### 普通
            execute if score @s GunCraft.CoolTime matches 1.. if predicate guncraft:have/gun unless predicate guncraft:have/scope_rifle run scoreboard players remove @s GunCraft.CoolTime 1

        ### 両手持ち
            execute if score @s GunCraft.CoolTime matches 1.. if predicate guncraft:have/gun_double run scoreboard players remove @s GunCraft.CoolTime 1

# リロード
    execute if score @s GunCraft.CoolTime matches 0 if score $max_ammo GunCraft.Temp > $ammo GunCraft.Temp if score $have_ammo GunCraft.Temp matches 1.. if predicate guncraft:have/gun unless predicate guncraft:have/gun_double unless predicate guncraft:have/scope_rifle unless predicate guncraft:flag/sneaking run function guncraft:core/reload
    execute if predicate guncraft:have/scope_rifle unless predicate guncraft:flag/sneaking unless score @s GunCraft.UsingScope matches 1.. if score $have_ammo GunCraft.Temp matches 1.. if score $ammo GunCraft.Temp < $max_ammo GunCraft.Temp run function guncraft:core/reload

# 発射
    ## 普通
        execute if predicate guncraft:have/gun unless predicate guncraft:have/bazooka unless predicate guncraft:have/scope_rifle if score @s GunCraft.Rclick matches 1.. run trigger GunCraft.Trigger add 1
    
    ## bazooka
        execute if predicate guncraft:have/bazooka if score @s GunCraft.SneakTime matches 20.. if score @s GunCraft.Rclick matches 1.. if score $ammo GunCraft.Temp matches 1.. run function guncraft:core/shot_trigger/bazooka

    ## 発射処理
        execute if score @s GunCraft.Trigger matches 1.. if score $ammo GunCraft.Temp matches 1.. at @s anchored eyes positioned ^ ^ ^ run function guncraft:core/projectile/trigger
        execute if score @s GunCraft.Trigger matches 1.. unless score $ammo GunCraft.Temp matches 1.. at @s run function guncraft:core/projectile/miss

# 減速
    ## hand_gun
        execute if predicate guncraft:flag/sneaking if predicate guncraft:have/hand_gun at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:2,ShowParticles:0b}]}

    ## rifle
        execute if predicate guncraft:have/rifle at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:2,ShowParticles:0b}]}
        execute if predicate guncraft:flag/sneaking if predicate guncraft:have/rifle at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:4b,Duration:5,ShowParticles:0b}]}

    ## bazooka
        execute if predicate guncraft:have/bazooka at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:2b,Duration:5,ShowParticles:0b}]}
        execute if predicate guncraft:flag/sneaking if predicate guncraft:have/bazooka at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:4b,Duration:5,ShowParticles:0b}]}

    ## 3burst
        execute if predicate guncraft:have/shotgun at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:2,ShowParticles:0b}]}
    
    ## lazer_rifle
        execute if predicate guncraft:have/lazer_rifle at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:2,ShowParticles:0b}]}
        execute if predicate guncraft:flag/sneaking if predicate guncraft:have/lazer_rifle at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:4b,Duration:5,ShowParticles:0b}]}

    ## lazer_hand_gun
        execute if predicate guncraft:have/lazer_hand_gun at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:2,ShowParticles:0b}]}

    ## fire_gun
        execute if predicate guncraft:flag/sneaking if predicate guncraft:have/fire_gun at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:1b,Duration:5,ShowParticles:0b}]}

    ## scope_rifle
        execute if predicate guncraft:have/scope_rifle at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block air",Radius:0.2f,Duration:6,Age:4,Effects:[{Id:2,Amplifier:0b,Duration:2,ShowParticles:0b}]}

# スコア設定
    ## GunCraft.Rclick をリセット
        execute if score @s GunCraft.Rclick matches 1.. run scoreboard players reset @s GunCraft.Rclick

    ## スニークしていないなら GunCraft.SneakTime をリセット
        execute unless predicate guncraft:flag/sneaking if score @s GunCraft.SneakTime matches 1.. run scoreboard players reset @s GunCraft.SneakTime

    ## 1tick前まで scope_rifle が使用されていた
        ### キャンセル
            execute if entity @s[advancements={guncraft:using/scope_rifle=false}] if score @s GunCraft.UsingScope matches 1.. if score @s GunCraft.CoolTime matches 1.. run scoreboard players set @s GunCraft.CoolTime 40
            execute if entity @s[advancements={guncraft:using/scope_rifle=false}] if score @s GunCraft.UsingScope matches 1.. if score @s GunCraft.CoolTime matches 1.. run scoreboard players set @s GunCraft.UsingScope 0

        ### 発射
            execute if entity @s[advancements={guncraft:using/scope_rifle=false}] if score @s GunCraft.UsingScope matches 1.. if score @s GunCraft.CoolTime matches 0 run trigger GunCraft.Trigger add 1

# 弾数表示
    execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches -1 run scoreboard players operation @s GunCraft.LAmmo = $ammo GunCraft.Temp
    execute if predicate guncraft:have/gun_double if score @s GunCraft.OffSet matches 1 run title @s actionbar [{"text": "| ","color": "green"},{"score":{"objective":"GunCraft.LAmmo","name":"@s"},"color": "green"},{"text": " "},{"score":{"objective":"GunCraft.Temp","name":"$ammo"},"color": "green"},{"text": " |"}]
    execute if predicate guncraft:have/gun unless predicate guncraft:have/gun_double run title @s actionbar [{"text": "| ","color": "green"},{"score":{"objective":"GunCraft.Temp","name":"$ammo"},"color": "green"},{"text": " |"}]

tag @s remove This

# 進捗剥奪
    execute if entity @s[advancements={guncraft:using/scope_rifle=true}] run advancement revoke @s only guncraft:using/scope_rifle
    advancement revoke @s only guncraft:player_tick