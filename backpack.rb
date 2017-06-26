require_relative 'day.rb'
require_relative 'weather.rb'

class Backpack

  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = ['pants', 'shirt']
    prepare
  end

  def items
    @items
  end

  def weather
    @attributes[:weather]
  end

  def day_of_week
    # today = Day.new('thursday')
    # today.weekday?
    @attributes[:day_of_week]
  end

  def prepare

    # Ensure appropriate clothing is added to backpack
    @items << 'umbrella' if Weather.new(weather).rainy?
    @items << 'jacket'   if Weather.new(weather).cold?
    
    # Ensure gym shoes are added to backpack if it's a gym day
    @items << 'gym shoes' if Day.new(day_of_week).gym_day?

    # Bring a packed lunch on all weekdays
    @items << 'packed lunch' if Day.new(day_of_week).weekday?

  end



  # Prints a summary packing list for Melinda's backpack
  def packing_list_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
