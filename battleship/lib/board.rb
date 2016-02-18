require 'pry'

class Board

  attr_accessor :board_size

  def initialize(board_size=4)
    @board_size = board_size
    @rows = nil
    store_board_rows
  end

  def store_board_rows
    @rows = ("A".."Z").first(@board_size).map  do |letter|
      row = Array.new(@board_size+1, ".")
      row[0] = letter
      row
    end
    binding.pry
  end

  def display_board_frame
    frame_length = (@board_size*2.75)
    puts "=" * frame_length
    puts ". #{[*1..@board_size].join(" ")}"
    display_board_rows
    puts "=" * frame_length
  end

  def display_board_rows
    @rows.each do |row|
      puts row.join(" ")
    end
  end

end

board = Board.new(4)

board.display_board_frame
