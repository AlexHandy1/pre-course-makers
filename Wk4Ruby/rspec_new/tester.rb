class Team
	attr_accessor :teams, :favourite_team
	def initialize(teams = {}, favourite_team = nil)
		@teams = teams
		@favourite_team = favourite_team
	end

	def my_favourite_team
		@teams[:WBA]
	end

	def your_favourite_team
		@teams[:MANU]
	end
end

team = Team.new({:WBA => "West Brom", :MANU => "Man United"})

team.teams
team.my_favourite_team
team.your_favourite_team
