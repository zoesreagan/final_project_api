class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()


register Sinatra::CrossOrigin

#connect to database
  # ActiveRecord::Base.establish_connection(
  #     :adapter => 'postgresql',
  #     :database => 'final'
  #       )


  # use Rack::MethodOverride
  # set :method_override, true

  use Rack::Session::Cookie,  :key => 'rack.session',
                              :path => '/',
                              :secret => 'secret'

require 'open-uri'

get '/' do #works
  {
    success: false,
    message: "Not here"
  }.to_json
end

not_found do
  halt 404
end

configure do
    enable :cross_origin
  end #cross-origin

  set :allow_origin, :any
  set :allow_methods, [:get, :post, :delete, :put, :options]

options '*' do
    p "opi"
    response.headers['Allow'] = 'HEAD, GET, POST, PUT, PATCH, DELETE'
		response.headers['Access-Control-Allow-Origin'] = 'http://behest-ad.herokuapp.com' #will need to put in front end heroku location!
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    end


  end
