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
      @y -= 1
    end
  end

  def left
    @direction = :w
  end

  def right
    @direction = :e
  end

end


#     if direction == n
#       if turn == right
#         direction == 'East'
#       else turn == left
#       direction == 'West'
#
#      if direction == e
#         if turn == right
#           direction == 'South'
#         else turn == left
#         direction == 'North'
#
#         if direction == s
#           if turn == right
#             direction == 'West'
#           else turn == left
#           direction == 'East'
#
#             if direction == w
#               if turn == right
#                 direction == 'North'
#                 else turn == left
#                        direction == 'South'
#               end
#               end
#             end
#         end
#         end
#      end
#       end
#     end
#   end
#

