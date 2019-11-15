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
    @one = params[:number1]
    @two = params[:number2]
    if params[:operation] == "add"
      @operator = "+"
    elsif params[:operation] == "subtract"
      @operator = "-"
    elsif params[:operation] == "multiply"
      @operator = "*"
    elsif params[:operation] == "divide"
      @operator = "/"
    end
  end

end
