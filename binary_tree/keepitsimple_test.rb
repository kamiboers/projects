require 'minitest/autorun'
require 'minitest/pride'
require_relative 'keepitsimple'


class NodeTest < Minitest::Test
  def test_the_node_is_at_zero_initially
    assert @node_depth = 0
  end

  def test_that_initial_node_is_nil
    first_node = Node.new
    first_node.root
    assert first_node.root = nil
  end

  def test_that_initial_node_has_become_a_hash
    first_node = Node.new
    first_node.root_to_hash
    root_to_hash
    assert first_node.root_to_hash = {}
  end

  # def test_the_node_has_an_empty_left_buddy
  #   assert @node.lefty == nil
  # end
  #
  # def test_the_node_has_an_empty_right_buddy
  #   assert @node.righty == nil
  # end
end
