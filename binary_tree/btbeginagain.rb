require 'pry'

class NodeTree

  def initialize(root_val = nil, all_nodes = {}, node_depth = 0)
    @all_nodes = all_nodes
    @root_val = root_val
    @movie_names = ["Labyrinth", "Stranger Than Fiction", "Big Fish", "Lost in Translation"].shuffle
  end

  def create_random_values
    random_value = rand(1..100)
    random_movie = @movies_names.pop
    add_random_values_to_set(random_value, random_movie)
  end

  def add_random_values_to_set(random_value, random_movie)
    @all_nodes[random_value] << random_movie
  end


end

doit = NodeTree.new
doit.create_random_values
puts @all_nodes
