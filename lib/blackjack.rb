def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  firstCard = deal_card
  secondCard = deal_card
  card_total = firstCard + secondCard
  display_card_total(card_total)
  card_total
end

def hit?(initial_round)
  loop do
    prompt_user
    answer = get_user_input

    case (answer)
    when "s"
      false
    when "h"
      newCard = deal_card
      card_total = initial_round + newCard
      display_card_total(card_total)
      if card_total >= 21
        false
      end
    else
      invalid_command
    end
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
