#!/usr/bin/ruby

class RPS
  def comp_choice
    choice = rand(1..3)
    choice == 1 ? 'rock' : choice == 2 ? 'paper' : 'scissors'
  end

  def player_wins?(choice1, choice2)
    wins = [['rock', 'scissors'],['paper', 'rock'],['scissors', 'paper']]
    if choice1 == choice2
      'tie'
    else
      wins.include?([choice1, choice2])
    end
  end

  def play(choice)
    choices = ['rock', 'paper', 'scissors']
    if choices.include?(choice)
      player_won = player_wins?(choice, comp_choice())
      if player_won == 'tie'
        # puts 'You tie'
        'You tie'
      elsif player_won
        # puts 'You win!'
        'You win!'
      else
        # puts 'You lose'
        'You lose'
      end
    else
      # puts 'Invalid choice'
      'Invalid choice'
    end
  end
end

# game = RPS.new()
# puts 'Choose rock, paper, or scissors'
# player_choice = gets.chomp.to_s.downcase
# game.play(player_choice)
