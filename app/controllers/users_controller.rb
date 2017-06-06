class UsersController < ApplicationController
  before_action :set_active_user, only: [:show, :edit, :update]

  def edit
  end

  def update
    @user = current_user
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_active_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :profile_picture, :cover_photo)
  end

end
