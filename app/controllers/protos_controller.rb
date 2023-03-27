class ProtosController < ApplicationController
 def index
  @protos=Proto.all
 end

 def create
 @proto = Proto.new(proto_params)
 end
end
