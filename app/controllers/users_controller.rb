class UsersController < ApplicationController
  skip_before_filter :logged_in, :only => [:create, :new]

  def new
    render :new
  end

  def create
    @user = User.create!(params[:user])
    session[:token] = @user.token
    redirect_to user_url(@user)
  end

  def show
  end

  def index
  end

  def edit
  end

  def feed
    @circles_with_posts = current_user.circles.includes(:posts)
    render :feed
  end
end
