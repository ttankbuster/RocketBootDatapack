tag @a[nbt={Inventory:[{id:"minecraft:blaze_powder"}]}] add rb.fueled
scoreboard players set @a[gamemode=!adventure,gamemode=!survival] rb.fuel 100
execute as @a[gamemode=!creative,gamemode=!spectator] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:blaze_powder"}]}] run tag @s remove rb.fueled
tag @a[gamemode=!survival,gamemode=!adventure] add rb.fueled
execute as @a[tag=rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run execute at @s run execute if block ~ ~-1 ~ air run effect give @s minecraft:levitation 1 6 true
execute as @a[tag=rb.fueled,scores={rb.fly=1,rb.jump=0},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run execute at @s run execute if block ~ ~-0.25 ~ air run execute if block ^ ^ ^1 air run tp @s ^ ^ ^0.5
execute as @a[tag=rb.fueled,scores={rb.fly=1,rb.jump=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0 0.1 0.1 300
execute as @a[tag=rb.fueled,scores={rb.fly=1,rb.jump=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run effect give @s minecraft:levitation 1 40 true
execute as @a[tag=rb.fueled,scores={rb.fly=1,rb.jump=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run clear @s blaze_powder 5
scoreboard players set @a rb.jump 0
execute at @a[tag=rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run particle minecraft:large_smoke ~ ~0.3 ~ 0.1 0 0.1 0.05 10
execute at @a[tag=rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 0.5
execute at @a[tag=rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run particle minecraft:flame ~ ~0.3 ~ 0.1 0.1 0.1 0.1 6
effect clear @a[scores={rb.fly=0},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] minecraft:levitation
execute at @a[tag=!rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run playsound minecraft:entity.fox.spit master @a ~ ~ ~ 0.3 0.4
execute at @a[tag=!rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run particle minecraft:crit ~ ~ ~ 0.2 0.5 0.2 0.1 20
execute as @a[tag=rb.fueled,scores={rb.fly=1},nbt={Inventory:[{Slot:100b,tag:{Tags:["RocketBoots"]}}]}] run scoreboard players remove @s rb.fuel 1
clear @a[scores={rb.fuel=..0},tag=rb.fueled] minecraft:blaze_powder 1
scoreboard players set @a[scores={rb.fuel=..0},tag=rb.fueled] rb.fuel 99
scoreboard players set @a rb.fly 0
function rocketboots:build