class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(safe_user_params)
    if @user.save
      self.current_user = @user
      flash[:success] = "User registered"
      redirect_to root_path
    else
      flash[:error] = "Unable to register user"
      redirect_to new_user_path
    end
  end

  private

  def safe_user_params
    # permit drops anything not whitelisted
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end