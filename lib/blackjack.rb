def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  puts "Your cards add up to #{total}"
  return total
end

def hit?(total)
  prompt_user
  answer = get_user_input
<<<<<<< HEAD
  if answer == "h"
    total += deal_card
    return total
  end
  if answer == "s"
=======
  if answer = "h"
    total += deal_card
  end
  if answer = "s"
>>>>>>> 19e869617f481bae93a75f6ab6af0ad7526597d8
    total
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
