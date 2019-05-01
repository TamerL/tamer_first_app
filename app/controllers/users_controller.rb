class UsersController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @cars = @user.cars
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:user][:name], email: params[:user][:email])
    redirect_to @user
  end

  def destroy
    User.find(params[:id]).delete
    redirect_to :action => :index
  end
end
