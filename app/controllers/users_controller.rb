class UsersController < ApplicationController

  before_action :move_to_root

  def index
  end

private
  def move_to_root
    redirect_to new_user_session_url unless user_signed_in?
  end

end
