require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base



  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :new
  end


  post '/bookmarks' do

    flash[:notice] = "You must submit a valid URL." unless Bookmark.create(url: params['url'])
    redirect '/bookmarks'

  end

    run! if app_file == $0


end
