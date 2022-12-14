#> guncraft:system/load
#
# load処理
#
# @private


#> performance
# ____
# 弾丸の通常ダメージ
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Damage dummy

#> performance
# ____
# ヘッドショットのダメージ
# - GunCraft.Damage より高い数値を設定することを推奨します
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.HeadDamage dummy

#> performance
# ____
# 弾速
# - [m/s]の 1/5 に相当します
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Speed dummy

#> performance
# ____
# 銃の射程
# - [m] の 4倍に相当します
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Reach dummy

#> temp
# ____
# 再帰カウント
# - システム内の処理で使用されます
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Recursion dummy

#> UUID
# ____
# PlayerID
# - プレイヤーごとに割り振られる固有のスコアです
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.PlayerID dummy

#> temp
# ____
# - 1tickで終了する内部処理で使用します
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Temp dummy

#> trigger
# ____
# 銃のトリガー
# - 銃が発射されるとき使用します
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Trigger trigger

#> count
# ____
# クールタイム
# - 銃のクールタイムです
# - この値が0になるまで銃は発射されません
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.CoolTime dummy

#> click
# ____
# クリック
# - 人参棒のクリック判定用スコアです
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Rclick minecraft.used:minecraft.carrot_on_a_stick

#> count
# ____
# スニーク時間
# - スニークの持続時間です
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.SneakTime custom:sneak_time

#> count
# ____
# リコイル
# - 銃のリコイルです
# - 値が大きいほど強くリコイルします
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Recoil dummy

#> count
# ____
# オフセット
# - 銃のオフセットです
# - 両手持ちの際に発射位置を設定します
# - Min: -1
# - Max: 1
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.OffSet dummy

#> click
# ____
# 望遠鏡の使用時間
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.UsingScope dummy

#> count
# ____
# リロード
# - リロードの進行度です
# - 0になるとリロードされます
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Reload dummy

#> setting
# ____
# Help
# - 設定の呼び出し用スコアです
# @within function asset:guncraft/**
# @internal
scoreboard objectives add Help trigger

#> setting
# ____
# GunParticle
# - 設定の呼び出し用スコアです
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunParticle trigger

#> setting
# ____
# - 銃のパーティクル表示設定です
# @within function asset:guncraft/**
# @internal
scoreboard objectives add Setting.GunParticle dummy

#> temp
# ____
# - 選択中のスロットです
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.SelectSlot dummy

#> debug
# ____
# - debug用
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.Debug dummy

#> temp
# ____
# - オフハンドの残弾数
# @within function asset:guncraft/**
# @internal
scoreboard objectives add GunCraft.LAmmo dummy

# スコア設定
    execute unless score $Global GunCraft.PlayerID matches -2147483648..2147483647 run scoreboard players set $Global GunCraft.PlayerID 0
    execute unless score $Damage GunCraft.Temp matches -2147483648..2147483647 run scoreboard players set $Damage GunCraft.Temp 1
    execute unless score $2 GunCraft.Temp matches -2147483648..2147483647 run scoreboard players set $2 GunCraft.Temp 2
    execute unless score $3 GunCraft.Temp matches -2147483648..2147483647 run scoreboard players set $3 GunCraft.Temp 3