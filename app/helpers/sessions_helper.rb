module SessionsHelper

  def current_user
    @current_user ||= User.find_by_token(session[:token])
  end

  def logged_in
    redirect_to new_session_url unless current_user
  end

  def logged_in?
    !!@current_user
  end

end
