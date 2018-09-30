require 'sinatra/base'
require 'sinatra/flash'
require './lib/cheet'
require 'uri'

class Chitter < Sinatra::Base

  enable :sessions
  register Sinatra::Flash

  get '/' do
    redirect'/chitter'
  end

  get '/chitter' do
    @chitter = Cheet.all
    erb :chitter
  end

  get '/chitter/new' do
    erb :new
  end

  post '/chitter/new' do
    Cheet.create(cheet: params['cheet'])
    redirect '/chitter'
  end

    run! if app_file == $0
end
