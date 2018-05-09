require 'sinatra/base'
require './lib/stored_bookmarks'
require './lib/database_manager'

class Bookmarks < Sinatra::Base

  get '/bookmarks' do
  erb :index
  end

  post '/new' do
    bookmark.add(params[:bookmark])
    redirect('/bookmarks')
  end

  def bookmark
    StoredBookmarks
  end

end
