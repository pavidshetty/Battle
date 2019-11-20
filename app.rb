require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  # A session is a short-term information store that lives on the server.
  # It's very small, but it allows the server to store basic pieces of information,
  # like the name of the current user, across multiple requests. In Sinatra, session is a Hash,
  # and you can set values for its keys. session is most often used to store details of a logged in user.


  get '/' do
    erb :index
  end

# In the post '/names' route, let's store the player names in the session instead of assigning them to instance variables:@player_1_name and @player_2_name
# we want the user to:
# submit the form to post '/names'
# extract the submitted names from the params into the session
# redirect to get '/play'
# extract the names from the session to instance variables

  post '/names' do
   session[:player_1_name] = params[:player_1_name]
   session[:player_2_name]= params[:player_2_name]
   redirect '/play'     #So we need to redirect the user after they post to /names:
  end
# a POST request is not intended for extracting parameters and for rendering a view of these purposes. We should use a GET request to render our view.
  get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :play
end

 get '/attack' do
   @player_1_name = session[:player_1_name]
   @player_2_name = session[:player_2_name]
   erb :attack
 end
  run! if app_file == $0
end
