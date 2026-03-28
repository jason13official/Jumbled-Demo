from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID
from jumbled:score import Score

score_obj = Score(fake, lives)

execute as @a[scores={deaths=1..}] run function jumbled:on_death

with score_obj.matches("0"):
    function jumbled:game_over

with score_obj.matches("..-1"):
    gamemode spectator @a

bossbar set BOSSBAR_ID players @a
execute store result bossbar BOSSBAR_ID value run scoreboard players get fake lives

execute as @a if score jumbled_fake jumbled_lives matches 0.. run bossbar set jumbled:lives visible true

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

execute as @a if score jumbled_fake jumbled_lives matches 0.. run title @s actionbar [
    {"text": "\u2764 Lives: ", "color": "gold"},
    {"score": {"name": f"{fake}", "objective": f"{lives}"}, "color": "yellow", "bold": true},
    {"text": "/500", "color": "gray"}
]
