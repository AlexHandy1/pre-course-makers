#create function around #serves #winners #games #sets
# run it with numbers/ strings, with variables, and with other functions

def average_serves_winners(games_per_match, matches)
	total_games = games_per_match * matches # how ensure that integer .to_i didn't work
	puts "If you play #{games_per_match} games in #{matches} matches you have played #{total_games} games in total"
	serves_per_match = (10/2) * games_per_match
	winners_per_match = 2 * games_per_match
	total_serves = serves_per_match * matches
	total_winners = winners_per_match * matches
	puts "Then typically you would have hit #{total_serves} serves and #{total_winners} winners"

	return total_serves, total_winners, serves_per_match
end

def match_game_calculator(total_serves, total_winners, serves_per_match)
	puts "So you have hit #{total_serves} serves and #{total_winners} winners"
	puts "This means that you have played #{total_serves/serves_per_match} matches"
end

games_per_match = 20
matches = 3

average_serves_winners(20,3)
average_serves_winners(12,5)
average_serves_winners(15,4)
average_serves_winners(17,6)
average_serves_winners(20,9)
average_serves_winners(12,8)
average_serves_winners(15,7)
average_serves_winners(17,2)
average_serves_winners(games_per_match, matches)
match_game_calculator(300, 120, 100)

total_serves, total_winners, converter = average_serves_winners(games_per_match, matches)
match_game_calculator(total_serves, total_winners, converter) # note can change variable name, doesn't have to match parameter
