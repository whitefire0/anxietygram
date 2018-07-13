class ProfilesController < ApplicationController
  def show
    @user = User.find_by(username: params[:username])
    @images = User.find_by(username: params[:username]).images.order('created_at DESC')
  end

  def edit
    @user = User.find_by(user_name: params[:user_name])
  end
end
