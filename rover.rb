class Rover
  attr_reader :n, :e, :w, :s
  attr_accessor :heading

  def initialize
    @x = 0
    @y = 0
    @direction = :n
  end

  def direction
    @direction
  end

  def heading
    @direction
  end

  def x
   @x
  end

  def y
    @y
  end

  def forward
    case @direction
    when  :n
      @y += 1
    when :s
      @y -= 1
    when  :e
      @x += 1
    when :w
      @x -= 1
    end
  end

  def left
    case @direction
    when :n
      @direction = :w
      when :w
        @direction = :s
      when :s
        @direction = :e
      when :e
        @direction = :n
    end
  end

  def right
    case @direction
      when :n
        @direction = :e
      when :e
        @direction = :s
      when :s
        @direction = :w
      when :w
        @direction = :n
    end
  end

  def follow(arg)
    arg.chars.each do |x|
      if x == 'L'
        left
      elsif x == 'F'
      forward
      else x == 'R'
      right
    end
    end
    end
end