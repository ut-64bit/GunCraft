#> guncraft:craft/light_ammo
# @within advancement guncraft:craft/light_ammo

summon item ~ ~ ~ {PickupDelay: 0s, Item: {id: "command_block", tag: {KaguNBT: {Item: {Type: "light_ammo"}}, display: {Name: '{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gold","text":"LightAmmo"}'}}, Count: 6b}}
recipe take @s guncraft:light_ammo
clear @s knowledge_book 1
advancement revoke @s only guncraft:craft/light_ammo