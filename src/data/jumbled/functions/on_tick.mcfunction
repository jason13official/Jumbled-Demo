execute as @a[scores={deaths=1..}] run function jumbled:on_death
execute if score $total lives matches ..0 run function jumbled:game_over

bossbar set jumbled:lives players @a
execute store result bossbar jumbled:lives value run scoreboard players get $total lives
execute as @a run title @s actionbar [{"text": "\u2764 Lives: ", "color": "gold"}, {"score": {"name": "$total", "objective": "lives"}, "color": "yellow", "bold": true}, {"text": "/500", "color": "gray"}]
