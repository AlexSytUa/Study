class Train
  attr_reader :number, :type, :wagons, :speed, :route

  def initialize(number,type,wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def add_speed(speed)
    @speed += speed
  end

  def get_speed
    puts "Current speed of train: #{speed}"
  end

  def zero_speed
    @speed = 0
  end

  def get_number_of_wagons
    puts "This train has #{wagons} wagons"
  end

  def add_wagon
    @wagons += 1 if speed == 0
  end

  def remove_wagon
    @wagons -= 1 if speed == 0
  end

  def add_route(route)
    @route = route
    @train_position = 0
  end

  def move_forward
    @train_position += 1
  end

  def move_back
    @train_position -= 1
  end

  def get_position
    puts "Current station: #{route.station_list[@train_position]}"
    puts "Previous station: #{route.station_list[@train_position-1]}" if @train_position > 0 
    puts "Current station: #{route.station_list[@train_position+1]}" if @train_position < route.station_list.length 
  end


end
