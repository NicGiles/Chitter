require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  enable :sessions
  register Sinatra::Flash



  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :new
  end


  post '/bookmarks/new' do

    flash[:notice] = "You must submit a valid url§." unless Bookmark.create(url: params['url'], title: params[:title])
    redirect '/bookmarks'

  end

    run! if app_file == $0


end
