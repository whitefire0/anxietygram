class HomeController < ApplicationController
  skip_before_action :login_required
  def index
    @welcome_image = Image.last
  end
end