require 'pry'
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubblier'

class BubbleTest < Minitest::Test

  def test_initial_time_is_nil
    test = BubbleSort.new
    assert @time_start==nil
  end

  def test_timer_records_starting_time
    test = BubbleSort.new
    test.timer_start
    assert @time_start != nil
    assert @time_start.class == Time
  end

  def test_prints_original_scrambled_array
    test = BubbleSort.new
    assert_equal "\nScrambled values:\n [4, 1, 2, 3]", test.display_original([4,1,2,3])
  end

  def test_recognizes_neighbors_out_of_order
    test = BubbleSort.new
    assert test.neighbors_out_of_order?([2,1], 0)
    refute test.neighbors_out_of_order?([1,2], 0)
  end

  def test_swap_two_positions_on_demand
    skip
    test = BubbleSort.new
    assert_equal [1,2], test.switch_neighbor_order([2,1])
    assert_equal [2,1], test.switch_neighbor_order([1,2])
  end

  def test_swap_only_when_out_of_order
    skip
    test = BubbleSort.new
    assert_equal [1,2], test.compare([2,1])
    assert_equal [1,2], test.compare([1,2])
  end

  def test_move_up_one_position
    skip
    test = BubbleSort.new
    array = [1, 2, 3, 4, 5]
    pos = 0
    assert_equal 1, array[pos]
    test.move_up_one_position(pos)
    assert equal 2, array[pos]
  end




end
