class Bike
attr_accessor :type, :model

  def initialize(type, model)
    @type = type
    @model = model
  end

  def tour_bike
    puts "A #{@type} #{@model} is one of the tour bikes this year."
  end
end

bike = Bike.new('specialize', 'roubaix')
puts bike
puts bike.type
puts bike.model
bike.model = 'tarmac'
puts bike.model
bike.tour_bike






