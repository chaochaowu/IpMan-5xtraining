class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_permit_params)
    if @user.save
      redirect_to root_url, notice: t('controller.notice.users.create_success')
    else
      flash[:notice] = t('controller.notice.users.create_failure')
      render :new
    end
  end

  private

  def user_permit_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end