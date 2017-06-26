class Weather


def initialize(weather)

  @weather = weather

end

def rainy?
  @weather == 'rainy'
end

def cold?
  @weather == 'cold'
end


end
