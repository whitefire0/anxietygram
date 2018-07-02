class ApplicationController < ActionController::Base
  before_action :login_required

  private

  def login_required
    unless logged_in?
      redirect_to login_path, :alert => "You must be logged in to view this resource"
    end
  end
end
