class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :login]

  def new
  end

  def login
    if user = User.authenticate(params[:username], params[:password])
      self.current_user = user
      redirect_to root_path, notice: "User logged in successfully"
    else
      flash.now[:alert] = "Username/password was invalid"
    end
  end

  def destroy
    auth_session.invalidate!
    redirect_to login_path, notice: 'Logged out successfully.'
  end

end