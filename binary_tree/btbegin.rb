require 'pry'
# require 'csv'

class NodeTree
attr_reader :node_depth

  def initialize(root_val = nil, all_nodes = {}, node_depth = 0)
    @all_nodes = all_nodes
    # @node_depth = node_depth
#movies should be a constant, and ultimately a csv file
    @movie_names = ["Labyrinth", "Stranger Than Fiction", "Big Fish", "Lost in Translation"]
  end

# def open_movies_file
#     @movie_names = CSV.open "movie_names.csv", headers: false
#   end

def create_random_value
  random_value = rand(1..100)
  choose_a_movie_and_assign_rating(random_value)
end

def is_movies_empty?
  @movie_names.empty?
end

def if_movies_left
  if !is_movies_empty?
    next_movie = @movie_names.pop



def choose_a_movie_and_assign_rating(random_value)
    @all_nodes[random_value] = @movie_names.pop
end

# def assign_all_the_movies
#   initial_movies = @movie_names
#   binding.pry
#   @allnodes = initial_movies.map {@movie_names.pop}
# end

# def each_node_has_a_depth
#   @all_nodes
# end

# def node_depth_goes_up
#   @node_depth += 1
# end
#
# def node_depth_goes_down
#   @node_depth -= 1
# end
#
#
# def node_on_left_side
# end
# def node_on_right_side
# end
#
# def when_lower_moves_left
#   node_depth_goes_up
# end
#
# def when_higher_moves_right
#   node_depth_goes_up
# end

end


make_a_node = NodeTree.new
make_a_node.assign_all_the_movies
binding.pry
