#> guncraft:craft/explosion_ammo
# @within advancement guncraft:craft/explosion_ammo

summon item ~ ~ ~ {PickupDelay: 0s, Item: {id: "minecraft:command_block", tag: {KaguNBT: {Item: {Type: "explosion_ammo"}}, display: {Name: '{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gold","text":"ExplosionAmmo"}'}}, Count: 2b}}
recipe take @s guncraft:explosion_ammo
clear @s knowledge_book 1
advancement revoke @s only guncraft:craft/explosion_ammo