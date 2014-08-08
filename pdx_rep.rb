require './lib/rep'
require './lib/party'

def main_menu
  puts "\n\nBook of PDX representatives. \n\n"
  puts "Press 'a' to add a representative."
  puts "Press 'l' to list all of your representatives."
  puts "Press 'p' to list all of the current parties."
  puts "Press 'x' to exit."

  user_selection = gets.chomp

  if user_selection == 'x'
    puts "Vote now and vote often!"
    exit
  elsif user_selection == 'a'
    add_rep
  elsif user_selection == 'l'
    list_reps
  elsif user_selection == 'p'
    list_parties
  else
    puts "not a valid entry, try again!"
    main_menu
  end
end

def add_rep
  puts "Please enter the name of your new representative:"
  name = gets.chomp.to_s
  new_rep = Rep.new(name)
  puts "Representative " + new_rep.name + " has been added"
  main_menu
end
main_menu
