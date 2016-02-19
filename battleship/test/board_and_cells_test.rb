gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'board_and_cells'
require 'pry'

class BoardTest < Minitest::Test

def test_cells_initially_return_false_for_ship_and_placeholder_for_value
  board_cell = Cell.new
  assert_equal false, board_cell.ship
  assert_equal ".", board_cell.value
end

def test_cells_return_true_and_change_value_when_placing_ship
  game_board = Board.new
  board_cell = Cell.new
  game_board.place_ship(board_cell)
  assert_equal true, board_cell.ship
  assert_equal "S", board_cell.value
end

def test_board_contains_correct_corner_values_at_default_size
  game_board = Board.new
  assert_equal "A1", game_board.grid.flatten[0].name
  assert_equal "D4", game_board.grid.flatten[15].name
end

def test_board_scales_to_correct_size_and_values
  game_board = Board.new(8)
  assert_equal "A1", game_board.grid.flatten[0].name
  assert_equal "H8", game_board.grid.flatten[63].name
end

def test_board_is_searchable
game_board = Board.new(8)
assert_equal "E7", game_board.select_cell_by_name(game_board.grid, "E7")[0].name
end

end
