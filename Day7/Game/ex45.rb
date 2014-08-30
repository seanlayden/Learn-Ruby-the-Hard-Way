# Make a Game

require "./ex45-map.rb"
require "./ex45-inventory.rb"
require "./ex45-actions.rb"

a_map = Map.new('great_room')
a_game = Engine.new(a_map)
a_game.play()
