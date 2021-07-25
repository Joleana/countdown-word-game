require "open-uri"

class GamesController < ApplicationController
  VOWELS = %w(A E I O U Y)

  def new
    # TO DO: display a new random grid and a form
    @letters = Array.new(5) { VOWELS.sample }
    @letters += Array.new(5) { (('A'..'Z').to_a - VOWELS).sample }
    @letters.shuffle!
    @start_time = Time.now
  end

  def score
    # TO DO: takes form from new; submitted (with POST)
    @letters = params[:letters].split
    @attempt = (params[:attempt] || "").upcase
    @included = included?(@attempt, @letters)
    @english_word = english_word?(@attempt)
  end

  private

  def included?(attempt, letters)
    attempt.chars.all? { |letter| attempt.count(letter) <= letters.count(letter) }
  end

  def english_word?(attempt)
    # checks if english word
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{attempt}")
    parsed_hash = JSON.parse(response.read)
    parsed_hash["found"]
  end

end
