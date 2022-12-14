#> guncraft:_index.d
# @internal
# @within function asset:guncraft/**
    #declare score_holder $Global グローバルなスコアホルダー(Playerは設定できないよ)
    #declare score_holder $Damage Damage
    #declare score_holder $2 設定用の数字保存するやつ
    #declare score_holder $3 設定用の数字保存するやつ
    #declare tag AttackPlayer 誰が撃った弾丸か判別するために一時的に付与するよ
    #declare tag Damage HitしたEntity
    #declare tag GunCraft.Bom 爆発しそうな弾丸についてる
    #declare tag GunCraft.Light 光線っぽい弾丸についてる
    #declare tag GunCraft.Fire 炎っぽい弾丸
    #declare tag/block guncraft:no_collision
    #declare tag/block guncraft:in_water
    #declare storage guncraft:item
    #declare tag in_water 水にぶち込まれた弾丸につく
    #declare tag projectile_this
    #declare tag GunCraft.HitBom
    #declare tag GunCraft.HitLight
    #declare tag GunCraft.HitFire
    #declare tag GunCraft.hit_rifle
    #declare tag GunCraft.Projectile
    #declare tag GunCraft.Preparation