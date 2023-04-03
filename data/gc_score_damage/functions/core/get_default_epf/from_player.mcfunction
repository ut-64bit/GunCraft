#> gc_score_damage:core/get_default_epf/from_player
#
# プレイヤーのエンチャントデータを取得します
#
# @within function gc_score_damage:core/get_default_epf/

# 負荷軽減のためにstorageに入れる
    data modify storage gc_score_damage: Inventory set from entity @s Inventory
# プロテクション抽出
    data modify storage gc_score_damage: Protection append from storage gc_score_damage: Inventory[{Slot:103b}].tag.Enchantments
    data modify storage gc_score_damage: Protection append from storage gc_score_damage: Inventory[{Slot:102b}].tag.Enchantments
    data modify storage gc_score_damage: Protection append from storage gc_score_damage: Inventory[{Slot:101b}].tag.Enchantments
    data modify storage gc_score_damage: Protection append from storage gc_score_damage: Inventory[{Slot:100b}].tag.Enchantments
# インベントリ削除
    data remove storage gc_score_damage: Inventory