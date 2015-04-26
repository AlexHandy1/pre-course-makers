require './fizzbuzz.rb'

describe 'Fizzbuzz' do
	context 'knows divisible by 3' do
		it '3' do
			expect(is_divisible_by_three?(3)).to be_truthy
		end

		it '5' do
			expect(is_divisible_by_five?(5)).to be_truthy
		end

		it '15' do
			expect(is_divisible_by_fifteen?(15)).to be_truthy
		end
	end

	context 'knows not divisible by 3' do
		it '3' do
			expect(is_divisible_by_three?(1)).not_to be_truthy
		end

		it '5' do
			expect(is_divisible_by_five?(1)).not_to be_truthy
		end

		it '15' do
			expect(is_divisible_by_fifteen?(1)).not_to be_truthy
		end
	end	

	context 'while playing fizz buzz' do
		it 'the number' do
			expect(fizzbuzz(1)).to eq 1
		end
		it 'fizz' do
			expect(fizzbuzz(3)).to eq "fizz"
		end
		it 'buzz' do
			expect(fizzbuzz(5)).to eq "buzz"
		end
		it 'fizzbuzz' do
			expect(fizzbuzz(15)).to eq "fizzbuzz"
		end
	end

end



#My initial effort
# describe 'Fizzbuzz' do 

# 	describe '#new' do

# 		it 'should be an instance' do
# 			@instance = Fizzbuzz.new(1,100)
# 			@instance.should be_an_instance_of Fizzbuzz
# 		end

# 		#why wouldn't this work?
# 		it 'should have a min and a max' do
# 			@instance.min.should eql 1
# 			@instance.max.should eql 100
# 		end

# 	end

# 	#how do you parcel out the inputs e.g. I only want to test a couple of numbers and what they should equal but don't have input into play method?
# 	describe 'logic tests' do
# 		context 'fizz' do
# 			it 'multiple of 3 should equal fizz'
# 			# @instance.play

# 			end
# 		end

# 		context 'buzz' do
# 			it 'multiple of 5 should equal buzz'

# 			end
# 		end

# 		context 'fizzbuzz' do
# 			it 'multiple of 15 should equal fizzbuzz'

# 			end
# 		end

# 		context 'non multiple' do
# 			it 'if not multiple of 3 or 5 should give number'

# 			end
# 		end
# 	end

# end