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

  def less_speed(speed)
    @speed = speed if @speed - speed >= 0
  end

  def add_wagon
    #Не понятный мне момент, так как в задании нет каких либо ограничений или условий касаемо колличества вагонов
    @wagons += 1 if speed == 0
  end

  def remove_wagon
    #Не понятный мне момент, так как в задании нет каких либо ограничений или условий касаемо колличества вагонов
    @wagons -= 1 if speed == 0 && @wagons > 0 
  end

  def add_route(route)
    @route = route
    @train_position = 0
  end

  def move_forward #добавить на проверку наличи станции назад
    get_current_position.send_train(self)
    @train_position += 1
    get_current_position.add_train(self)
  end

  def move_back
    get_current_position.send_train(self)
    @train_position -= 1
    get_current_position.add_train(self)
  end

  def get_current_position
    route.stations[@train_position]
  end

  def get_previous_position
    route.stations[@train_position-1] if @train_position > 0 
  end

  def get_next_position
    route.stations[@train_position+1] if @train_position < route.stations.length 
  end
end
