from jumbled:constants import deaths, lives, fake, BOSSBAR_ID
from jumbled:score import Score
from jumbled:macros import play_sound_broadcast

score_obj = Score(fake, lives)

score_obj = -1

play_sound_broadcast minecraft:entity.wither.hurt

title_comp    = {"text": "GAME OVER", "color": "dark_red", "bold": True}
subtitle_comp = {"text": "The server has run out of lives!", "color": "red"}
title @a title title_comp
title @a subtitle subtitle_comp

tellraw @a [
    {"text":"☠ ","color":"dark_red","bold":true},
    {"text":"The server has run out of shared lives! Game over!","color":"red","bold":true}
]

bossbar set BOSSBAR_ID visible false