def cap_me(array)
  caps = []
  array.each do |i|
   caps << i.capitalize
  end
  p caps
end

cap_me(["KARLY", "DANIEL", 'KELSEY'])