require 'pry'
require_relative 'board_and_cells'
require_relative 'user_interface'
require_relative 'computer_input'

class GameFlow
  def initialize
    generate_user_and_computer_placement_boards
    generate_user_and_computer_view_boards
  end

  def generate_user_and_computer_placement_boards
      @user_board = Board.new
      @computer_board = Board.new
      binding.pry
  end

  def placement_of_user_and_computer_ships
  end

  def generate_user_and_computer_view_boards
    @user_view = @computer_board.dup
    @computer_view = @user_board.dup
    binding.pry
  end

  def player_shot
  end

  def record_player_shot
  end

  def display_shot_result
  end

  def computer_shot
  end

  def record_computer_shot
  end

  def ship_sunk
  end

  def all_ships_sunk
  end

  def end_game
  end

  def play_again?
  end

end

# 1 - Display an introduction to the game
# 2 - Prompt to play the game
# 3 - Create 4 boards - computer, computer shots, user, user shots
# 4 - Computer randomly places ships, this input is stored
# 5 - Player prompted to place ships, input is stored
# 6 - Player displayed an empty shot board, prompted for shot
# 7 - Shot recorded on user board, return whether hit, miss, or hit and sunk
# 8 - Computer shoots randomly
# 9 - Shot recorded on computer shot board, return to user whether hit, miss or hit and sunk
# 11 - If all ships are not sunk, loop back to #6
# 12 - Display game end message
# 13 - Prompt to play again
# 14 - If yes, loop back to 1 or 2
# 15 - Exit game


if __FILE__ == $0
  game_play = GameFlow.new
end
