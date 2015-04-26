def cooking_time(eggs)
  return ((eggs/8.to_f).ceil) * 5 
end

eggs = 10
puts ((eggs/8.to_f).ceil) * 5

#8 eggs at a time in pot, whenever hit over a certain multiple takes another 5 mins
#set validation that if zero = 0
#if under 8 = 5
#take eggs and divide it by 8 