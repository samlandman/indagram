class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post =   Post.find(params[:id])
  end

  def new
  end

  def create
    p params
    @post = Post.new(post_params)
    p post_params
    @post.save
    redirect_to @post
  end

 


  private
  def post_params
    params.require(:posts).permit(:title, :text, :image)
  end

end
