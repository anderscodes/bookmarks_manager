require 'pg'

class DatabaseManager

  def self.set_database
    if ENV['ENVIROMENT'] == 'test'
      connect = PG.connect :dbname => 'bookmark_manager_test'
    else
      connect = PG.connect :dbname => 'bookmark_manager'
    end
  end

end
