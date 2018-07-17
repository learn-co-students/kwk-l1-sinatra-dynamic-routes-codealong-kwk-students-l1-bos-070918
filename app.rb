require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
 get '/' do 
   "Confusion bad"
 end 
 
  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
get '/goodbye/:name' do
  @given_name = params[:name]
  "Goodbye, #{@given_name}."
end 
  get '/multiply/:num1/:num2' do
    @given_number1 = params[:num1].to_i
    @given_number2 = params[:num2].to_i
    answer = @given_number1 * @given_number2
    answer.to_s
    
  end 
end
