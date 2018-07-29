class Station
  attr_reader :name, :trains_list

  def initialize(name)
    @name = name
    @trains_list = []
  end

  def add_train(train)
    trains_list << train
  end

  def get_all_trains
    puts trains_list
  end

  def get_train(type = nil)
    puts trains_list.select { |train| train.type == type }
  end

  def send_train(train)
    trains_list.delete(train)  
  end


end
