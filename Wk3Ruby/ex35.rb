class String
  def is_integer?
    self.to_i.to_s == self
  end
end

def gold_room
  puts "This room is full of gold.  How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice.is_integer? == true  # must be a simpler way to do this rather than creating custom function to test
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def winning_room
  #add a room for another elsif for cthulhu_room - "man-up"
  #confuse the monster by coming up with an array that turn into a hash and turn into a string
  #add a winning statement
  puts "You decided to MAN-UP"
  puts "you are now going to confuse and kill the Cthulhu by providing two sentences and turning them into a magic hash"

  sentence1 = $stdin.gets.chomp.to_s
  sentence2 = $stdin.gets.chomp.to_s
  killer_sentence1 = sentence1.split #always remember/ think whether need to add a variable to store output of a method in
  killer_sentence2 = sentence2.split

  killer_sentence1.delete_if {|i| killer_sentence1.index(i) > 2}
  puts killer_sentence1

  killer_sentence2.delete_if {|i| killer_sentence2.index(i) > 2}
  puts killer_sentence2

  killer_hash = killer_sentence1.zip(killer_sentence2).to_h
  # killer_hash = (killer_sentence1, killer_sentence2).to_h #works that need to be in pairs of 2
  puts killer_hash
  puts killer_hash["1"]

  puts "Woah, you created a killer hash - you are the number one" # worth looking at whether can put a hash in a string and/ or why you'd want to?
end
#add a room for another elsif for cthulhu_room - "man-up"
  #confuse the monster by coming up with an array that turn into a hash and turn into a string
  #add a winning statement


def bear_room
  puts """
  There is a bear here
  The bear has a bunch of honey.
  The fat bear is in front of another door
  How are you going to move the bear?
  """
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end


def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life, eat your head OR MAN-UP?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  elsif choice.include? "MAN-UP"
    winning_room
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start