require 'pg'
require_relative './database_manager.rb'

class StoredBookmarks

  def self.all
    @connect = DatabaseManager.set_database
    result = @connect.exec "SELECT * FROM bookmarks"
    result.map{ |row| row['url']  }
  end

  def self.add(new_bookmark)
    @connect = DatabaseManager.set_database
    @connect.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{new_bookmark}');")
  end

end
