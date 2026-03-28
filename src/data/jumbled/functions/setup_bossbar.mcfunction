from jumbled:constants import deaths, lives, fake, STARTING_LIVES, BOSSBAR_ID

def setbbMax(value):
    bossbar set BOSSBAR_ID max value

bossbar add BOSSBAR_ID "Lives: XXX"

setbbMax(STARTING_LIVES)

bossbar set BOSSBAR_ID color red
bossbar set BOSSBAR_ID style progress
