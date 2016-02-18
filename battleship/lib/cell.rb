require 'pry'

class Board

  attr_accessor :board_size

  def initialize(board_size=4)
    @board_size = board_size
    @grid = Array.new(@board_size).map do |row|
      Array.new(@board_size).map do |column|
        Cell.new(self, row, column)
      end
    end
    binding.pry
  end

  def display_board
    @grid.map do |row|
      row.map(&:to_s).join(" ")
    end.join("\n")
  end

end



class Cell

  attr_accessor :x,
  :y
  attr_accessor :value,
  :ship

  def initialize(which_board=nil, x=nil, y=nil, value=".", ship=false)
    @board = which_board
    @x = x
    @y = y
    @value = value
    @ship = ship
  end

  def x
    @x
  end

  def y
    @y
  end

  def value
    @value
  end

  def ship
    @ship
  end

end

gameboard = Board.new
gameboard.display_board
