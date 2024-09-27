class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movie = Movie.new
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_index_path
    else
      render :index, status: :unprocessable_entity
    end
  end
  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
