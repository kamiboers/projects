require 'pry'
require_relative 'board_and_cells'
require_relative 'repl'

class UI
  def initialize
    @user_control = Repl.new
  end

  def game_introduction
    puts "Welcome to BATTLESHIP \n Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    input = String(gets.chomp)
    @user_control.valid_input(input)
  end

  def prompt_to_place_first_ship
    puts "I have laid out my ships on the grid.\n
    You now need to lay out your two ships.\n
    The first is two units long and\n
    the second is three units long.\n
    The grid has A1 at the top left and D4 at the bottom right\n\n
    Enter the squares for the two-unit ship:"
    input = String(gets.chomp)
    @user_control.valid_input(input)
  end

  def prompt_to_place_next_ship
    "Please enter the squares for the three-unit ship:"
    @user_control.valid_input(input)
  end

  def user_places_ship(ship_cell)
    @grid.each_with_index do |cell|
      if cell.name == ship_cell
        cell.ship = true
      end
    end
  end
[2] pry(#<Board>)*   end
[2] pry(#<Board>)* end

  def get_user_shot
    #display @user_view
    "It's your turn to shoot! Choose a square:"
  end

  def return_result_of_shot
    if hit
      "It's a hit!"
      if sunk
        return_sunk_ship
      end
    else
      "It's a miss :("
    end
    #display @user_view
  end

  def return_sunk_ship
    "You/Computer sunk a ship of number-unit length!"
    if all_ships_sunk
      end_game_message
    end
  end

  def end_game_message
    "You/Computer WIN!!!"
    "It took x shots over x amt of time."
    prompt_to_play_again
  end

  def prompt_to_play_again
    "Would you like to (p)lay again or (q)uit?"
  end

end

if __FILE__ == $0
  user_interface = UI.new
  binding.pry
end
