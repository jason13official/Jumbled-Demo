from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID
from jumbled:score import Score

score_obj = Score(fake, lives)
score_obj.remove(1)

scoreboard players reset @s deaths
