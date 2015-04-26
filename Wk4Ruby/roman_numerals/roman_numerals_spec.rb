require './roman_numerals.rb'

describe 'Roman Numerals' do 
	it 'should be able to convert 1 to I' do
		expect(RomanNumerals.new.converter(1)).to eq "I"
	end

	it 'should be able to convert 5 to V' do
		expect(RomanNumerals.new.converter(5)).to eq "V"
	end

	it 'should be able to convert 10 to X' do
		expect(RomanNumerals.new.converter(10)).to eq "X"
	end

	it 'should be able to convert 50 to L' do
		expect(RomanNumerals.new.converter(50)).to eq "L"
	end

	it 'should be able to convert 35 to XXXV' do
		expect(RomanNumerals.new.converter(35)).to eq "XXXV"
	end

	it 'should be able to convert 996 to CMXCVI' do 
		expect(RomanNumerals.new.converter(996)).to eq "CMXCVI"
	end	

	it 'should be able to convert 1999 to MCMXCIX' do 
		expect(RomanNumerals.new.converter(1999)).to eq "MCMXCIX"
	end
end