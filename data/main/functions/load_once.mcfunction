scoreboard objectives add UseCarrotStick minecraft.used:carrot_on_a_stick
scoreboard objectives add UseWarpedFungus minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add UseCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add UseBow minecraft.used:minecraft.bow
scoreboard objectives add UsingBow dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add Death minecraft.custom:minecraft.deaths
scoreboard objectives add Talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add Health health
scoreboard objectives add HasCarrotStick dummy
scoreboard objectives add ID dummy
scoreboard objectives add ParentID dummy
scoreboard objectives add HP dummy
scoreboard objectives add MaxHP dummy
scoreboard objectives add MP dummy
scoreboard objectives add MaxMP dummy
scoreboard objectives add MPRegen dummy
scoreboard objectives add Cooldown dummy
scoreboard objectives add FollowRange dummy
scoreboard objectives add KnockbackMultiplier dummy
scoreboard objectives add BeaconDamage dummy
scoreboard objectives add Interval dummy
scoreboard objectives add TrapRotation dummy
scoreboard objectives add Emerald dummy
scoreboard objectives add Stage dummy
scoreboard objectives add Portal dummy
scoreboard objectives add Group dummy
scoreboard objectives add Display dummy {"translate":"Status","color":"gray"}
scoreboard objectives add Trigger trigger
scoreboard objectives add StackTime dummy

scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

scoreboard objectives add Slime dummy
scoreboard objectives add Crusher dummy
scoreboard objectives add Burning dummy
scoreboard objectives add Masher dummy
scoreboard objectives add Stun dummy

scoreboard objectives setdisplay sidebar Display
scoreboard objectives setdisplay below_name Health

scoreboard players set #2 _ 2
scoreboard players set #3 _ 3
scoreboard players set #4 _ 4
scoreboard players set #5 _ 5
scoreboard players set #20 _ 20
scoreboard players set #21 _ 21
scoreboard players set #100 _ 100
scoreboard players set #1000000 _ 1000000

summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0],NoGravity:1b,Invulnerable:1b}
summon snowball 0.0 0.0 0.0 {Tags:[KeepProjectile],UUID:[I;0,0,0,1],NoGravity:1b}

team add Enemy
team add Friendly
team modify Friendly collisionRule never
team modify Friendly seeFriendlyInvisibles false
team modify Friendly color red
team add Red
team modify Red color red
team add Green
team modify Green color green
team add Gold
team modify Gold color gold
team add LightPurple
team modify LightPurple color light_purple

team join Friendly @a
team join Green Emerald
team join Gold Combo
team join LightPurple Wave

bossbar add crystal {"translate":"Crystal","color":"aqua"}
bossbar set minecraft:crystal style notched_20
bossbar set minecraft:crystal color red
bossbar set minecraft:crystal max 20

setworldspawn 42 102 52 -90

forceload add 0 0
forceload add 85 50

function trap:settings
function achievements:data
function achievements:chest/update
function stage:data/lobby
