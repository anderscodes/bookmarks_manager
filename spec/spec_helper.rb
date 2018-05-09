require 'capybara'
require 'capybara/rspec'
require 'rspec'

require './lib/stored_bookmarks'


require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = Bookmarks

ENV['ENVIROMENT'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
    require './lib/testing_enviroment.rb'
  end
end
