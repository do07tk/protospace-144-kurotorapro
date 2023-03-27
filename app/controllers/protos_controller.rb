class ProtosController < ApplicationController
  def index
    @protos=Proto.all
  end

  def create
    if @proto = Proto.create(proto_params)
      redirect_to root_path
    else
      render :new_proto_path
    end
  end

  def new
    @proto = Proto.new
  end

  private

  def proto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
