class Ship
  attr_reader :length

def initialize(length=2, hits=0)
  @length = length
  @hits = hits
end

def length
  @length
end

def add_ship
end

def placement_parameters
end

def ship_hit
  if @hits < @length
    # display message about hit to ship via user interface
  else
    ship_sunk
  end
end

def ship_sunk
  # display message about sunken ship
  # determine whether to end game or continue
end

end