from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID
from jumbled:score import Score

score_obj = Score(fake, lives)

scoreboard objectives add lives dummy
scoreboard objectives add deaths deathCount

unless score fake lives = fake lives:
    score_obj = STARTING_LIVES

tellraw @a [
    {"text":"[Jumbled] ","color":"green"},
    {"text":"Lives: ","color":"gray"},
    {"score":{"name":f"{fake}","objective":f"{lives}"},"color":"yellow","bold":true},
    {"text":f"/{STARTING_LIVES}","color":"gray"}
]

function jumbled:setup_bossbar
