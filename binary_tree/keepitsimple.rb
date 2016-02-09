class Node

  def initialize(node_depth = 0)
    @node_depth = node_depth
  end

  def node_exists_as_empty_thing
    @node
  end



  def root
    @root = Hash.new
  end



end

doit = Node.new
doit.root
