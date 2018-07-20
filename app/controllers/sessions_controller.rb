class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.present? && @user.authenticate(params[:password])
      self.current_user = @user
      flash[:success] = "User logged in successfully"
      redirect_to root_path
    else
      Rails.logger.info "GOT HERE 01 - Invalid login, render flash error message"
      flash.now[:error] = "Username/password was invalid"
      render 'new'
    end
  end

  def destroy
    if auth_session.invalidate!
      flash[:success] = "You have successfully logged out"
      redirect_to login_path
    else
      flash[:error] = "Error logging out."
    end
  end
end