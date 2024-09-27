class SeriesController < ApplicationController
  def index
    @seriesall = Series.all
    @series = Series.new
  end

  def new
    
  end

  def create
    @series = Series.new(serie_params)
    if @series.save
      
      redirect_to series_index_path
    else
      render :index, status: :unprocessable_entity
    end
  end
  def serie_params
    params.require(:series).permit(:name, :synopsis, :director)
  end
end
