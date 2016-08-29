class Api::UsersController < ApplicationController
  def create
    render "api/users/show"
  end

  def show
    render "api/users/show"
  end

  def update
    render "api/users/show"
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  # def update_params
  #   params.require(:user).permit(:first_name,
  #     :last_name, :about, :city, :country,
  #     :avatar, :cover)
  # end
end
