
require 'sinatra/base'
require 'sinatra/activerecord'

#controllers
require './controllers/ApplicationController'
require './controllers/UserController'
#response controller


#models
require './models/UserModel'
require './models/ResponseModel'

#routes
map ('/') {
  run ApplicationController
}

map ('/user') {
  run UserController
}

#response controller
