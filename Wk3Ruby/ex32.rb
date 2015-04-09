the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

the_count.each do |number|
	puts "This is count #{number}"
end

fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

change.each {|i| puts "I got #{i}"}

elements = []

(0..5).each do |i|
	elements << i
end

elements.each {|i| puts "Elements are :#{i}"}

elements.map! {|i| i*2}
elements.each {|i| puts "Elements are :#{i}"}

if elements.include?('3') == false
	elements.insert(2,3)
	puts elements
end

elements.select! {|i| i >= 3}
elements.each {|i| puts "Elements are :#{i}"}