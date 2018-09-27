require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base



  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :new
  end


  post '/bookmarks/new' do

    flash[:notice] = "You must submit a valid URL." unless Bookmark.create(url: params['url'], title: params[:title])
    redirect '/bookmarks'

  end

    run! if app_file == $0


end
