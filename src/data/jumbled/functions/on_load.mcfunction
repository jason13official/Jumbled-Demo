scoreboard objectives add lives dummy
scoreboard objectives add deaths deathCount
execute unless score $total lives = $total lives run scoreboard players set $total lives 500

function jumbled:setup_bossbar
