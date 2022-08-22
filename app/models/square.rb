class Square < Rectangle
  def width=(width)
    super(width)
    @height = width
  end

  def height=(height)
    super(height)
    @width = height
  end
end