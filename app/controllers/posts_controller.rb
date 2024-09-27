class PostsController < ApplicationController
  def index
      @posts = Post.all
      @movies = Movie.all
      @series = Series.all
      @documentaries = Documentary.all
  end

  def new
    #Captura los datos enviados en el formulario
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to posts_index_path
    else
      render :new
    end
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
