class SessionsController < ApplicationController

  skip_before_filter :logged_in, :only => [:new, :create]

  def new
    render :new
  end

  def create
    @user = User.find_by_username(params[:username])
    if @user.password_equals?(params[:password])
      session[:token] = @user.token
      redirect_to user_url(@user)
    else
      redirect_to new_session_url
    end

  end

  def destroy
    current_user.change_token!
    session[:token] = nil
    redirect_to new_session_url
  end

end
