class Square < Shape
  attr_accessor :side_length

  def calculate_area
    side_length * side_length
  end
end