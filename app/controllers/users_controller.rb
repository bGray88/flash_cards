class UsersController < ApplicationController
  before_action :format_email,  only: [:create]
  before_action :find_user,     only: [:show]
  before_action :validate_user, only: [:show]

  def new
    @user = User.new
  end

  def show; end

  def create
    user = User.create(user_params)
    if user.save
      UsersMailer.welcome_email(user.id).deliver_later
      flash[:success] = "Please Log In, #{user.first_name} #{user.last_name}"
      redirect_to login_path
    else
      flash[:error] = user.errors.full_messages.to_sentence
      redirect_to register_path
    end
  end

  private

  def validate_user
    unless current_user
      flash[:error] = "Login necessary"
      redirect_to root_path
    end
  end

  def format_email
    params[:email]&.downcase!
  end

  def find_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
