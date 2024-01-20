class UsersController < ApplicationController
  def list
    @users = User.order(created_at: :asc)
  end
end
