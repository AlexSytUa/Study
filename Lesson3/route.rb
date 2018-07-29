class Route
  attr_reader :station_list

  def initialize(first_station, last_station)
    @station_list = [first_station, last_station]
  end

  def add_station(station)
    station_list.insert(-2, station)
  end

  def remove_station(station)
    station_list.delete(station) 
  end

  def get_stations
    puts station_list
  end
end
