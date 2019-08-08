require 'sinatra/base'

class Battle < Sinatra::Base

  get "/" do
    erb :index_get
  end

  post "/" do
    @p1name = params[:Player_1_name]
    @p2name = params[:Player_2_name]
    erb :index_post
  end

  run! if app_file == $0

end
