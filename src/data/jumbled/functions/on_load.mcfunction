from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID

scoreboard objectives add lives dummy
scoreboard objectives add deaths deathCount

unless score fake lives = fake lives:
    scoreboard players set fake lives STARTING_LIVES

function jumbled:setup_bossbar
