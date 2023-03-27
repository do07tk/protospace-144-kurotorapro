class ProtosController < ApplicationController
  def index
    @protos=Proto.all
  end

  def create
    @proto = Proto.new(proto_params)
  end

  def new
    @proto = Proto.new
  end

  private

  def mproto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
