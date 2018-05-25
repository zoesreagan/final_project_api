
require 'sinatra/base'
require 'sinatra/activerecord'

#controllers
require './controllers/ApplicationController'
require './controllers/UserController'
require './controllers/FormController'



#models
require './models/UserModel'
require './models/FormModel'

#routes
map ('/') {
  run ApplicationController
}

map ('/user') {
  run UserController
}

map ('/form') {
  run FormController
}
