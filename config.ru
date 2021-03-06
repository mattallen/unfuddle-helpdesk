ENV['TZ'] = 'Australia/Canberra'

require 'rubygems'

gem 'sinatra', '~> 0.9'
require 'sinatra'

set :run      => false,
    :env      => :production,
    :root     => File.dirname(__FILE__),
    :views    => File.dirname(__FILE__) + "/views",
    :public   => File.dirname(__FILE__) + "/public",
    :app_file => "unfuddle_helpdesk.rb"

require File.join(File.dirname(__FILE__), "unfuddle_helpdesk.rb")

run Sinatra::Application