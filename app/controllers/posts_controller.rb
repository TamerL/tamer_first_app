class PostsController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(name: params[:post][:name], title: params[:post][:title], user_id: User.last.id)
    redirect_to @post
  end

  def destroy
    Post.find(params[:id]).delete
    redirect_to action: :index
  #   redirect_to :action => :index
  #
  #   array:
  #   a =[1, 2, 3]
  #   a.first: a[0]
  #   a[1]
  #   a[2]
  #
  #   hash = {a: :b, c: :d}
  #   hash[:a] = :b
  #   hash[:c]= :d
  #
  #   active record: rails model
  #   user = User.create(name: 'judy', email: 'judy@fresho.com')
  #   user.name
  #   user.email
  end
end
