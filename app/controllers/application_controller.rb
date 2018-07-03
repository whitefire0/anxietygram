class ApplicationController < ActionController::Base
  before_action :login_required

  private

  def login_required
    unless logged_in?
      flash[:alert] = "You must be logged in to view this resource"
      redirect_to login_path
    end
  end
end
