class PostsController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
end