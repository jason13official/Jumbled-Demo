from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID
from jumbled:score import Score

score_obj = Score(fake, lives)

scoreboard objectives add lives dummy
scoreboard objectives add deaths deathCount

unless score fake lives = fake lives:
    score_obj = STARTING_LIVES

function jumbled:setup_bossbar
