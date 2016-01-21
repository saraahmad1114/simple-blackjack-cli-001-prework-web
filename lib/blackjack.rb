def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  new_num = rand(1..11)
  return new_num
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum_card = deal_card + deal_card
  display_card_total(sum_card)
  return sum_card
end

def hit? (current_card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    return current_card_total += deal_card
  elsif user_input == "s"
    current_card_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  new_total = initial_round
until new_total > 21 do
  new_total = hit?(new_total)
  display_card_total (new_total)
end
end_game(new_total)
end

