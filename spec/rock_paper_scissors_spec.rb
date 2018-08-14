require 'rspec'
require 'rock_paper_scissors'

describe 'RPS' do
  describe '#player_wins?' do
    it 'returns true if rock is the object and scissors is the argument'  do
      game = RPS.new()
      expect(game.player_wins?('rock', 'scissors')).to eq(true)
    end

    it 'returns false if rock is the object and paper is the argument' do
      game = RPS.new()
      expect(game.player_wins?('rock', 'paper')).to eq(false)
    end

    it 'returns false if scissors is the object and rock is the argument' do
      game = RPS.new()
      expect(game.player_wins?('scissors', 'rock')).to eq(false)
    end

    it 'returns false if paper is the object and scissors is the argument' do
      game = RPS.new()
      expect(game.player_wins?('paper', 'scissors')).to eq(false)
    end

    it 'returns tie if scissors is the object and scissors is the argument' do
      game = RPS.new()
      expect(game.player_wins?('scissors', 'scissors')).to eq('tie')
    end

  end

  describe '#comp_choice' do
    it 'randomly returns rock, paper, or scissors' do
      choices = ['rock', 'paper', 'scissors']
      game = RPS.new()
      expect(choices.include?(game.comp_choice())).to eq(true)
    end
  end

  describe '#play' do
    it 'returns the outcome of the game' do
      outcomes = ['You win!', 'You lose', 'You tie']
      game = RPS.new()
      expect(outcomes.include?(game.play('rock'))).to eq(true)
    end

    it 'returns "Invalid choice" if a choice is not either "rock", "paper", or "scissors"' do
      game = RPS.new()
      expect(game.play('rokc')).to eq('Invalid choice')
    end
  end




end
