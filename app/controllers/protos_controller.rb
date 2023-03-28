class ProtosController < ApplicationController
  def index
    @protos = Proto.includes(:user)
  end

  def create
    @proto = Proto.create(proto_params)
    if @proto.save
      redirect_to root_path
    else
      render :new_proto_path
    end
  end

  def new
    @proto = Proto.new
  end

  def edit
  end

  def update
  end

  private

  def proto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
