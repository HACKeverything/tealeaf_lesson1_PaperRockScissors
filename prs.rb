CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}
puts "Welcome to Paper, Rock, Scissors!"


def describe_winning_message(winning_choice)
	case winning_choice
	when 'p'
		puts "Paper wraps Rock!"
	when 'r'
		puts "Rock smashes Scissors!"
	when 's'
		puts "Scissors cuts Paper!"
	end
end


loop do

	begin 
		puts "please input p => paper,  r => rock,  s => scissors"
		player_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(player_choice)

	computer_choice = CHOICES.keys.sample


	if player_choice == computer_choice
		puts "It's a tie"

	elsif player_choice == 'p' && computer_choice == 'r' ||
		    player_choice == 'r' && computer_choice == 's' ||
		    player_choice == 's' && computer_choice == 'p' 
		describe_winning_message(player_choice)
		puts "You win!"

	else
		describe_winning_message(player_choice)
		puts "Computer win!"
	end

	puts "play again? (y/n)"
	ans = gets.chomp.downcase
	break if ans == 'n'

end