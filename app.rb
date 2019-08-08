require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get "/" do
    erb :index_get
  end

  post "/names" do
    session[:P1name] = params[:Player_1_name]
    session[:P2name] = params[:Player_2_name]
    redirect '/play'
  end

  get "/play" do
    @p1name = session[:P1name]
    @p2name = session[:P2name]
    erb :play
  end


  run! if app_file == $0

end
