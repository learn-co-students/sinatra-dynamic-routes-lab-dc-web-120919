require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    # byebug
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    # byebug
    (@number ** 2).to_s
  end

  get '/say/:number/:phrase' do 
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 =params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    # byebug
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'nothing..'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end
end







    # if operation == 'add'
    #   answer = (number1 + number2).to_s
    # elsif == 'subtract'
    #   answer = (number1 - number2).to_s
    # elsif == 'multiply'
    #   answer = (number1 * number2).to_s
    # elsif == 'divide'
    #   answer = (number1 / number2).to_s
    # else 
    #   answer 
 
  

