from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID
from jumbled:score import Score

score_obj = Score(fake, lives)
score_obj.remove(1)

tellraw @a [
    {"text":"☠ ","color":"red"},
    {"selector":"@s","color":"yellow","bold":true},
    {"text":" died! Shared lives remaining: ","color":"red"},
    {"score":{"name":f"{fake}","objective":f"{lives}"},"color":"yellow","bold":true}
]

scoreboard players reset @s deaths
