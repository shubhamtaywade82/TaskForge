class UsersController < ApplicationController
  def list
    @users = User.order(created_at: :asc).page params[:page]
  end
end
