class ProtosController < ApplicationController
  def index
    @protos = Proto.includes(:user)
  end

  def new
    @proto = Proto.new
  end

  def create
    @proto = Proto.create(proto_params)
    if @proto.save
      redirect_to root_path
    else
      render :new_proto_path
    end
  end

  def show
    @proto = Proto.find(params[:id])
    @comment = Comment.new
    @comments = @proto.comments.includes(:user)
  end

  def edit
    @proto = Proto.find(params[:id])
  end

  def update
    proto = Proto.find(params[:id])
    if proto.update(proto_params)
      redirect_to new_proto_path
    else
      render :edit
    end
  end

  private

  def proto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
