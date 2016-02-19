require 'pry'
require_relative 'user_interface'

class Repl

  def initialize
    @user_interface = UI.new
  end

  def valid_initial_input
      is_it_q(play)
    if play == "i" || play == "instructions"
      @user_interface.show_player_instructions
    elsif play != "p" && play != "play"
      @user_interface.input_invalid
    end
  end

  def is_it_q(input)
    if input == "q" || input == "quit"
      puts "\nGoodbye\n"
      exit
    end
  end

  def valid_input(input)
    "is it any good?"
  end



end
