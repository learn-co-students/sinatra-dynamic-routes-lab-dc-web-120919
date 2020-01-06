require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 

    @name = params[:name]
    rev_string = @name.reverse 
    return rev_string 
  end 

  get '/square/:number' do 

    @number = params[:number].to_i
    square = @number**2
    return square.to_s 
  end 

  get '/say/:number/:phrase' do 

    @number, @phrase = params[:number].to_i, params[:phrase]
    return new_phrase = @phrase*@number 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 

    @w1, @w2, @w3, @w4, @w5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    return new_phrase = @w1+" "+@w2+" "+@w3+" "+@w4+" "+@w5+"."
  end 

  get '/:operation/:number1/:number2' do 

    
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

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