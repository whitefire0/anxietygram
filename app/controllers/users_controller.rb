class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(safe_user_params)
    if @user.save
      self.current_user = @user
      redirect_to root_path, notice: 'User registered'
    else
      redirect_to new_user_path, notice: 'Unable to register user'
    end
  end

  private

  def safe_user_params
    # permit drops anything not whitelisted
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end