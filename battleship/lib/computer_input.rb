require 'pry'
require_relative 'user_interface'


class ComputerInput

  def initialize
    @computer_board = Board.new
    binding.pry
  end

  def computer_randomly_places_its_ships
  end

  def computer_shoots_randomly_at_user_ships
  end

end
