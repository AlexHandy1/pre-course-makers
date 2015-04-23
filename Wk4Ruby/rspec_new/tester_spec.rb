#build rspec test that includes an :all and an :each
#try and it version and let version with describe and context as well as subject and specify
#create a class to initialize a hash and test whether has a particular state after applying certain methods

require './tester.rb'

describe Team do 
	describe "#new" do 
		context "empty_hash" do 
			it "has an empty hash" do 
				@team = Team.new()
				@team.should be_an_instance_of Team
			end
		end
	end

	describe "#favourite teams" do
		context "my favourite" do
			it "should be West Brom" do
				@team = Team.new({:WBA => "West Brom", :MANU => "Man United"})
				@team.my_favourite_team.should eql "West Brom"
			end
		end

		context "your favourite" do
			it "should be Man United" do
				@team = Team.new({:WBA => "West Brom", :MANU => "Man United"})
				@team.your_favourite_team.should eql "Man United"
			end
		end
	end
end