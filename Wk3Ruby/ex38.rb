top_tennis_players = ["RF", "ND", "AM", "RN", "DF"]
six_nations_teams = ["England", "Italy", "Scotland", "Ireland", "Wales", "France"]
political_parties = ["Conservatives", "Labour", "Lib Dems", "UKIP", "Green Party", "SNP", "Plaid Cymru"]
akon_songs = ["Freedom", "Oh Africa", "Right Na Na Na", "Dangerous", "Locked Up", "Holla"]
months_in_year = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

top_tennis_players.insert(5, "MR", "MC") #add new elements based on position of element want to put after
puts top_tennis_players

six_nations_teams.collect! {|x| x + "!"} #Invokes the given block once for each element of self, replacing the element with the value returned by the block.
puts six_nations_teams

political_parties.index("Labour") #returns element number
puts political_parties

akon_songs.insert(6, political_parties)
akon_songs.flatten! #merges two arrays within an array into one array
puts akon_songs

puts months_in_year.join('-')
# puts months_in_year.permutation(11).to_a didn't work - just went to input in command line - check up on
puts months_in_year.shuffle



