require "pry"
def welcome
  puts ("Welcome to the Blackjack Table")
end

def deal_card
  randon_number = rand(1..11) 
end

def display_card_total(integer_args)
 puts "Your cards add up to #{integer_args}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    result = gets.chomp
end

def end_game (arg)
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  a = deal_card 
  b = deal_card 
  r = a+b 
  display_card_total (r)
  r 
end

def invalid_command
   puts("Please enter a valid command")
end

def hit?( arg)
  prompt_user
  input_ = get_user_input
  player_current_total = arg
  if input_ == "s" # we don't deal a new card
    return player_current_total 
  end
  
  if input_ == "h" # we do need to deal a new
    new_card = deal_card.to_i
    player_current_total = player_current_total+new_card
    return player_current_total
  end 
  
  if !(input_ == ("s" && "h"))
    invalid_command
    hit?(arg)
  end 
  # binding.pry
end

def runner
welcome
first = initial_round
second = hit?( first)
display_card_total(second)  
end_game (second)
end
    
