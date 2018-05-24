class UserController < ApplicationController

get '/' do
  @user = User.find(session[:user_id])
  {
    success: true,
    message: "Found user #{@user.id}",
    found_user: @user
  }.to_json
end

end 
