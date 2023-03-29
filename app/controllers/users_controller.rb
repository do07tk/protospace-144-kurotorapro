class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @protos = user.protos
  end  
end
