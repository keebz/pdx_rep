require './lib/rep'
require './lib/party'
require 'pry'

def main_menu
  puts "\n\nBook of PDX representatives. \n\n"
  puts "Press 'r' to add a representative."
  puts "Press 'l' to list all of your representatives."
  puts "Press 'p' to add a new political party."
  puts "Press 'lp' to list all the political parties"
  puts "Press 'x' to exit."

  user_selection = gets.chomp.to_s
  user_selection.downcase!

  if user_selection == 'x'
    puts "Vote now and vote often!"
    exit
  elsif user_selection == 'r'
    add_rep
    main_menu
  elsif user_selection == 'l'
    list_reps
    main_menu
  elsif user_selection == 'p'
    add_party
    main_menu
  elsif user_selection == 'lp'
    add_party
    main_menu
  else
    puts "not a valid entry, try again!"
    main_menu
  end
end

def add_rep
  puts "Please enter the name of your new representative:"
  name = gets.chomp.to_s.capitalize
  new_rep = Rep.new(name)

  puts "Representative " + new_rep.name + " has been added!"
  puts "what party does representative " + new_rep.name + " belong to?"
  party = gets.chomp.capitalize
  new_rep.set_party(party)
  puts new_rep.party + " " + new_rep.name + " has been updated!"

  puts "Is " + new_rep.party + " " + new_rep.name + " a senator or congress person?"
  loop do
    puts "press 1 for 'Senator' or 2 for 'Congress person':"
    selection = gets.chomp.to_i

      if selection == 1
        new_rep.set_rep_type('Senator')
        break
      elsif selection == 2
        new_rep.set_rep_type('Congress person')
        break
      else
        puts "not a valid input, try again!"
      end
  end
  puts new_rep.type + ", " + new_rep.party + " " + new_rep.name + " has been updated!"
end

def list_reps
  puts "Here are all of your representatives: \n\n"

  if Rep.list.length > 0
    Rep.list.each_with_index do |rep, index|
      puts (index + 1).to_s + ". " + rep.type + ", " + rep.party + " " + rep.name
    end
  else
    puts "You havent added any representatives. Let's do that now!"
    add_rep
    list_reps
  end
end

main_menu
