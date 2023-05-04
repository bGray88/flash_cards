class WelcomeController < ApplicationController
  def index
    @users = User.sort_by_score(:desc)
  end
end
