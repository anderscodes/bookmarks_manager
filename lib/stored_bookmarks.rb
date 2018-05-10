require 'pg'
require_relative './database_connection'

class StoredBookmarks

  def self.all
    connect = DatabaseConnection.enviroment
    result = connect.exec "SELECT * FROM bookmarks"
    result.map{ |row| row['url']  }
  end

  def self.add(new_bookmark)
    connect = DatabaseConnection.enviroment
    connect.exec("INSERT INTO bookmarks VALUES(DEFAULT, '#{new_bookmark}');")
  end

end
