puts "Please give me some money and I'll give you 10% cashback"
puts "How much money do you have?"
amount = gets.chomp.to_f

puts "Thanks"

cashback = amount * 0.1

puts "You get £#{cashback.round(2)} cashback"