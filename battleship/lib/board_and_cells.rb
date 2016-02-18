require 'pry'

class Board

  attr_accessor :board_size

  def initialize(board_size=4)
    @board_size = board_size
    @row_headings = ("A".."Z").first(@board_size)

    @grid = Array.new(@board_size).map do |row|
      Array.new(@board_size).map do |space|

        Cell.new #(self) will store the board ID here - simpler, easier to read way?
      end
    end
    assign_cell_coordinates
  end

  def assign_cell_coordinates
    (0...@board_size).each do |y_pos|
      (0...@board_size).each do |x_pos|
        cell = (@grid[y_pos][x_pos])
        cell.x = x_pos+1
        cell.y = y_pos+1
        cell.name = @row_headings[y_pos] + (x_pos+1).to_s
      end
      binding.pry
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
  binding.pry
  end

end



class Cell

  attr_accessor :x, :y, :value, :ship, :name


  def initialize(x=nil, y=nil, value=".", ship=false, name=nil)
    @x = x
    @y = y
    @value = value
    @ship = ship
    @name = name
  end

  # def x
  #   @x
  # end
  #
  # def y
  #   @y
  # end
  #
  # def name
  #   @name
  # end
  #
  # def value
  #   @value
  # end
  #
  # def ship
  #   @ship
  # end

end



gameboard = Board.new
binding.pry
gameboard.display_board_frame
