gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'game_flow'
require 'pry'

class GameFlowTest < Minitest::Test

def test_view_boards_are_duplicates_of_player_boards
  play_game = GameFlow.new
  play_game.generate_user_and_computer_placement_boards
  play_game.generate_user_and_computer_view_boards
  assert_equal play_game.computer_view, play_game.user_board
  refute_equal play_game.computer_view.object_id, play_game.user_board.object_id
  assert_equal play_game.user_view, play_game.computer_board
  refute_equal play_game.user_view.object_id, play_game.computer_board.object_id
end

end
