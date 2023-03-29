class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @protos = user.protos
    @username = user.name
    @userprofile = user.profile
    @useroccupation = user.occupation
    @userposition = user.position
  end  
end
