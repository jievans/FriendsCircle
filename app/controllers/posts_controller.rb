class PostsController < ApplicationController

  def new
    render :new
  end

  def show
    @post = Post.find_by_id(params[:id])
    render :show
  end

  def create
    # Post.create!(params[:post])
    post = current_user.posts.create!(params[:post])
    redirect_to post_url(post)
  end

end
