require 'pry'
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubblier'

class BubbleTest < Minitest::Test

  def test_if_recognizes_neighbors_out_of_order
    test = BubblierSort.new
    assert test.neighbors_out_of_order?([2,1])
    refute test.neighbors_out_of_order?([1,2])
  end

  def test_swap_two_positions_on_demand
    test = BubblierSort.new
    assert_equal [1,2], test.switch_neighbor_order([2,1])
    assert_equal [2,1], test.switch_neighbor_order([1,2])
  end

  def test_swap_only_when_out_of_order
    test = BubblierSort.new
    assert_equal [1,2], test.compare([2,1])
    assert_equal [1,2], test.compare([1,2])
  end

  def test_move_up_one_position
    test = BubblierSort
    array = [1, 2, 3, 4, 5]
    pos = 0
    assert_equal 1, array[pos]
    test.move_up_one_position(pos)
    assert equal 2, array[pos]
  end




end
