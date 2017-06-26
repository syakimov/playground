# input -> two string arrays
  guesses, winners
# output -> int
  int

# rules
* correct first place guess - 15 points
* correct second place guess - 10 points
* correct third place guess - 5 points
* correct fourth place guess - 3 points
* correct fifth place guess - 1 point

* correctly guessing a participant is in the top 5
  but misplacing them - 1 point

# example
input  => [:bob, :mark, :walter], [:mark, :bob, :walter]
output => 7
