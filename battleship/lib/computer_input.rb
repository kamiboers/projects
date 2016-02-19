require 'pry'
require_relative 'user_interface'


class ComputerInput

  def initialize
    @computer_board = Board.new
    binding.pry
  end

  def computer_randomly_places_its_ships
    @computer_board.grid.sample.sample.ship = true
binding.pry
    end

  def computer_shoots_randomly_at_user_ships
  end

end


if __FILE__ == $0
computer_play = ComputerInput.new
binding.pry

end
