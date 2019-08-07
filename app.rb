require 'sinatra/base'

class Battle < Sinatra::Base

  get "/" do
    '<head><link rel="icon" href="data:,"></head>'
  end

  run! if app_file == $0

end
