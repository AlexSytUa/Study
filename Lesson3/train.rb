class Train
  attr_reader :number, :type, :wagons, :speed, :route

  def initialize(number,type,wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def add_speed(value)
    @speed += value
  end

  def less_speed(value)
    @speed -= value if @speed - value >= 0
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
    current_position.send_train(self)
    @train_position = 0
    current_position.add_train(self)
  end

  def move_forward #добавить на проверку наличи станции назад
    if @train_position < route.stations.length do
      current_position.send_train(self)
      @train_position += 1
      current_position.add_train(self)
    end
  end

  def move_back
    if @train_position > 0 do
      current_position.send_train(self)
      @train_position -= 1
      current_position.add_train(self)
    end
  end

  def current_position
    route.stations[@train_position]
  end

  def previous_position
    route.stations[@train_position-1] if @train_position > 0 
  end

  def next_position
    route.stations[@train_position+1] if @train_position < route.stations.length 
  end
end
