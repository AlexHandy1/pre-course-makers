def perfect_square? n
  sqrt = n ** 0.5
  if sqrt - sqrt.round(2) == 0 then p true else p false end
end

# def is_square?(n)
# 	x = n
#    loop do
#      y = ((x + n/x)/2)
#      if y < x
#        x = y
#      else
#        return x
#      end
#    end
# end

# is_square?(1)
# is_square?(3)
# is_square?(4)
# is_square?(25)
# is_square?(26)

# def max_digit n, m
#   result = 0
#   (0..9).each do |i|
#     break if ((n * 10) + i) * i > m
#     result = i
#   end
#   result
# end

# def perfect_square?(n)
#   arr = []
#   a = n
#   while true
#     a, b = a / 100, a % 100
#     arr.unshift b
#     break if a == 0
#   end
#   remain = 0
#   carried = 0
#   arr.each do |i|
#     num = remain * 100 + i
#     digit = max_digit(carried, num)
#     remain = num - (carried * 10 + digit) * digit
#     carried = (carried * 10 + digit) + digit
#   end
#   remain == 0
# end

perfect_square?(1)
perfect_square?(3)
perfect_square?(4)
perfect_square?(25)
perfect_square?(26)