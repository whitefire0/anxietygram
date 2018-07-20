class ApplicationController < ActionController::Base
  before_action :login_required
  rescue_from Authie::Session::ValidityError, :with => :auth_session_error

  private

  def login_required
    unless logged_in?
      flash[:alert] = "You must be logged in to view this resource"
      redirect_to login_path
    end
  end

  def auth_session_error
    redirect_to login_path, :alert => "Your session is no longer valid. Please login again to continue..."
  end
end
