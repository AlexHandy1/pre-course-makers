name = "Alex Handy"
age = 25
height_cm = 178
weight_kg = 70
eyes = "Blue"
teeth = "White"
hair = "Brown"
Zed_age = 35
Zed_height_in = 74
Zed_weight_lbs = 180

puts "Let's talk about #{name}."
puts "He's #{height_cm} inches tall."
puts "He's #{weight_kg} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee." 

cm_to_in = 0.39
kg_to_lbs = 2.20

height_in = height_cm * cm_to_in
weight_lbs = weight_kg * kg_to_lbs

diff_to_Zed = (Zed_age + Zed_height_in + Zed_weight_lbs) - (age + height_in + weight_lbs)
puts "If I add #{age.round(0)}, #{height_in.round(0)}, #{weight_lbs.round(0)} I get #{age.round(0) + height_in.round(0) + weight_lbs.round(0)} which is #{diff_to_Zed.round(0)} compared to Zed"p