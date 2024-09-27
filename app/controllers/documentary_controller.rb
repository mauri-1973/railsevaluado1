class DocumentaryController < ApplicationController
  def index
    @documentaryall = Documentary.all
    @documentary = Documentary.new
  end

  def new
  end

  def create
    @documentary = Documentary.new(documentary_params)
    if @documentary.save
      redirect_to documentary_index_path
    else
      render :index, status: :unprocessable_entity
    end
  end
  def documentary_params
    params.require(:documentary).permit(:name, :synopsis, :director)
  end
end
