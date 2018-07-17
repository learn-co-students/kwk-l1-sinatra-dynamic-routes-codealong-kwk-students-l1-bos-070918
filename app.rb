require_relative 'config/environment'

class App < Sinatra::Base
  # This home route is to help people be less confused
  get '/' do 
    "Hi, this is the blank homepage."
  end
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @given_name = params[:name]
    "Goodbye, #{@given_name}."
  end
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    answer = (@num1 * @num2).to_s
  end
end
