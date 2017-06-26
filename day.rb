class Day

  def initialize(day_of_week)
    @day_of_week = day_of_week
  end

  def gym_day?
    @day_of_week == 'monday' || @day_of_week == 'thursday'
  end

end
