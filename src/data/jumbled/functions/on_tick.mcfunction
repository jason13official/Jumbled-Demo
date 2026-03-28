from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID

execute as @a[scores={deaths=1..}] run function jumbled:on_death
execute if score fake lives matches ..0 run function jumbled:game_over

bossbar set BOSSBAR_ID players @a
execute store result bossbar BOSSBAR_ID value run scoreboard players get fake lives
bossbar set BOSSBAR_ID name {
    "text":"Lives: ", 
    "extra": [
        {
            "score": {
                "name":f"{fake}",
                "objective":f"{lives}"
            }
        }
    ]
}

execute as @a run title @s actionbar [
    {"text": "\u2764 Lives: ", "color": "gold"},
    {"score": {"name": f"{fake}", "objective": f"{lives}"}, "color": "yellow", "bold": true},
    {"text": "/500", "color": "gray"}
]
