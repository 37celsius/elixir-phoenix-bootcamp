hints = "flour, water, yeast, bakery"
IO.puts "Hints: #{hints}"

guess = IO.gets "Guess the word: "
guess = String.strip(guess) # this it just to remove the \n in guess instance

case guess do
  "bread" ->
    IO.puts "You win!"
  _wrong_guess -> # this is like else statement, we put variable with underscore to tell we don't use it
    IO.puts "You lost!"
end