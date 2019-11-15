require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get "/say/:number/:phrase" do
    string = ' '
    params[:number].to_i.times do
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    "#{@one} #{@two} #{@three} #{@four} #{@five}."
  end

  get "/:operation/:number1/:number2" do
    @one = params[:number1].to_i
    @two = params[:number2].to_i
    if params[:operation] == "add"
      @one + @two
    elsif params[:operation] == "subtract"
      @one - @two
    elsif params[:operation] == "multiply"
      @one * @two
    elsif params[:operation] == "divide"
      @one / @two
    end
  end

end
