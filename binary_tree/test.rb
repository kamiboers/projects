require 'pry'

  @all_nodes = {}
  @movie_names = ["Stranger Than Fiction", "Big Fish", "Lost in Translation"]


  random_value = rand(1..100)

    @all_nodes[random_value] = @movie_names.pop
binding.pry
