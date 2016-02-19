require 'pry'
require_relative 'user_interface'


class ComputerInput

  def initialize
  end

  def computer_randomly_places_its_ships
    @computer_board.sample.ship = true
    end

  def computer_shoots_randomly_at_user_ships
  end

end


if __FILE__ == $0
computer_play = ComputerInput.new
binding.pry

end
