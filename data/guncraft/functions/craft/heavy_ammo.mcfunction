#> guncraft:craft/heavy_ammo
# @within advancement guncraft:craft/heavy_ammo

summon item ~ ~ ~ {PickupDelay: 0s, Item: {id: "minecraft:command_block", tag: {KaguNBT: {Item: {Type: "heavy_ammo"}}, display: {Name: '{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gold","text":"HeavyAmmo"}'}}, Count: 3b}}
recipe take @s guncraft:heavy_ammo
clear @s knowledge_book 1
advancement revoke @s only guncraft:craft/heavy_ammo