require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/riddles_of_the_sphinx'

get('/') do
  @new_riddle = Riddles.new()
  erb(:input)
end

post('/riddle') do
  @correct = 0
  first_answer = params.fetch('answer1')
  first_guess = params.fetch('guess1')
  second_answer = params.fetch('answer2')
  second_guess = params.fetch('guess2')
  third_answer = params.fetch('answer3')
  third_guess = params.fetch('guess3')
  @correct += 1 if first_answer == first_guess
  @correct += 1 if second_answer == second_guess
  @correct += 1 if third_answer == third_guess

  return erb(:success) if @correct == 3

  erb(:fail)
end
