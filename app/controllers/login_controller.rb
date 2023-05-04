class LoginController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      flash[:success] = "Welcome, #{user.first_name} #{user.last_name}!"
      session[:user_id] = user.id
      auth_reroute
    else
      flash.now[:error] = "Sorry, your credentials don't match"
      render :new
    end
  end

  def destroy
    reset_session
    flash[:success] = "Successfully logged out"
    redirect_to login_path
  end

  private

  def auth_reroute
    redirect_to user_path
  end
end
