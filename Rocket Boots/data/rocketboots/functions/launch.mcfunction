scoreboard objectives add rb.fly minecraft.custom:minecraft.sneak_time
scoreboard objectives add rb.jump minecraft.custom:minecraft.jump
scoreboard objectives add rb.fuel dummy
scoreboard objectives add rb.armour1 dummy
scoreboard objectives add rb.armour2 dummy
scoreboard objectives add rb.armour3 dummy
scoreboard objectives add rb.armour4 dummy
tellraw @a ["",{"text":"---------------------\n","color":"gray"},{"text":"Rocket Boot pack loaded","underlined":true,"color":"gray"},{"text":"\nrecipe>\n 5 fireworks\n 5 glowstone dust\n 5 iron ingots\n 1 nether star\n leather boots\n---------------------","color":"gray"},{"text":"▶","clickEvent":{"action":"run_command","value":"/function rocketboots:manual"}}]