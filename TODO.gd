extends Node

# TODO:
# - add shader to hide enemies in the secondary fog
# - add method of fog to check if a point or Actor is in the fog or poking out of the fog
# - make bugs
# - give bugs attack AI
# - give turrets defend AI
# - allow the player to select a target for turrets
# - add a progress bar to show how full (of ore) a drill is
# - add a way to show the player a warning/error alert
# - Add the cliff and water tiles to the level obstacles

# TODO (polish):
# - make pathfinding more natural and precise
#   - give it a finer grid
#   - use raycasting to check if the unit can travel directly to any point in the path

# BUGS:
# - Actor's "moved" signal stops emitting before Actor is done slowing to a halt
# - attempting to build a MiningDrill outside the fog crashes the game
# - clicking to select a target for an ability works even if the click is on the UI
# - mining drills canBuild is always set to false if you mouse out of one ore node, 
#   even if you are still in another ore node.
# - build previews not turning green when an ore node is revealed by clearing fog
# - mining drills show a resource that it doesn't procuce (i.e. 10 iridium, 0 uranium)
# - mining drills stop producing ore after taking some out
#   - after the drill filled once
# - ore nodes sometimes spawning too close to each other
# - ore nodes sometimes spawning too close to the edge

# Design Notes:
# - make each common bug spawn from a new random direction each time
# - periodically make a new type of special bug spawn from one new random direction 
#   and then continue spawning from that direction

