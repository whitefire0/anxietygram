class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  before_action :owned_post, only: [:edit, :update, :destroy]
  skip_before_action :login_required, only: [:new, :create]
  
  def index
    DebugHelper.mylog("testlog", "message", "variable")
    @images = Image.all
    # @comments = Comment.all
  end

  def new
    @image = current_user.images.build
  end

  def create
    Rails.logger.error "Current user: #{current_user.inspect}"
    @image = current_user.images.build(safe_user_params)
    if @image.save
      flash[:success] = "Your post has been created!"
      redirect_to images_path
    else
      flash[:error] = "Image submission error"
      redirect_to new_image_path
    end
  end

  def show
    @comments = Comment.where(:image_id => params[:id])
  end

  def edit
  end

  def update
    myparams = safe_user_params
    DebugHelper.mylog("params", "params in image#update", myparams.inspect)

    if @image.update(safe_user_params)
      flash[:success] = "Image edited successfully"
      redirect_to image_path
    else
      flash[:error] = "Image submission error"
      redirect_to edit_image_path
    end
  end

  def destroy
    if @image.destroy
      flash[:success] = "Image destroyed successfully"
      redirect_to images_path
    else
      flash[:error] = "Image destroy unsuccessful"
      redirect_to image_path
    end
  end

  # for each comment displayed in view, also display the username that maps to the user_id FK

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def safe_user_params
    params.require(:image).permit(:graphic, :graphic_file_name, :caption)
  end

  def owned_post
    unless current_user.id == @image.user.id
      DebugHelper.mylog("ownedpost", "current_user", current_user.inspect)
      flash[:error] = "You do not own this post! Das ist forboden!!"
      redirect_to root_path
    end
  end
end
