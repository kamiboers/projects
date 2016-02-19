require 'pry'
require_relative 'ship'

class Board

  attr_accessor :board_size, :grid

  def initialize(board_size=4)
    @board_size = board_size
    @row_headings = ("A".."Z").first(@board_size)
    @grid = Array.new(board_size).map do |row|
      Array.new(board_size).map do |space|
        Cell.new
      end
    end
    assign_cell_coordinates
  end

  def assign_cell_coordinates
    (0...@board_size).each do |y_pos|
      (0...@board_size).each do |x_pos|
        cell = (@grid[y_pos][x_pos])
        cell.name = @row_headings[y_pos] + (x_pos+1).to_s
      end
    end
  end

  def display_board_frame
    frame_length = (@board_size*2.75)
    puts "=" * frame_length
    puts ". #{[*1..@board_size].join(" ")}"
    display_board_rows
    puts "=" * frame_length
  end

  def display_board_rows
  (0...@board_size).each do |y_pos|
    print @row_headings[y_pos] + " "
    (0...@board_size).each do |x_pos|
      print @grid[y_pos][x_pos].value + " "
    end
      print "\n"
  end
  end

  def select_cell_by_name(grid, cell_name)
      cell = grid.flatten.select do |cell|
      cell.name == cell_name
      end
  end

  def place_ship(square)
    square.value = "S"
    square.ship = true
  end

  def grid
    @grid
  end

end

class Cell
  attr_accessor :value, :ship, :name

  def initialize(value=".", ship=false, name=nil)
    @value = value
    @ship = ship
    @name = name
  end

end


if __FILE__ == $0
gameboard = Board.new
tug_boat = Ship.new
binding.pry
gameboard.place_ship(tug_boat)
end
