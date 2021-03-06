class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.profile_title = ""
    @user.profile_description = ""
    @user.avatar_url = "https://secure.gravatar.com/avatar/d9fb812b41af97e6310fae5bcaf8c460?s=150&d=https://exposure-media.s3.amazonaws.com/static/exposure-logo-mark-avatar.png"
    if @user.save
      login(@user)
      render "api/users/show"
    else
      @errors = ["Invalid username and password"]
      render "api/shared/errors", status: 422
    end
  end

  def show
    @user = User.find_by_username(params[:id])

    if @user
      render "api/users/show"
    else
      render json: nil, status: 404
    end
  end

  def update
    @user = current_user
    @user.update(update_params)
    render "api/users/show"
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def update_params
    params.require(:user).permit(:avatar_url, :profile_title, :profile_description, :website_url)
  end
end
