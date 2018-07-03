class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  skip_before_action :login_required, only: [:new, :create]
  
  def index
    @images = Image.all
    # @comments = Comment.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(safe_user_params)
    if @image.save
      redirect_to images_path, notice: "Image submitted successfully"
    else
      redirect_to new_image_path, notice: "Image submission error"
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
      redirect_to image_path, notice: "Image edited successfully"
    else
      redirect_to edit_image_path, notice: "Image submission error"
    end
  end

  def destroy
    if @image.destroy
      redirect_to images_path, notice: "Image destroyed successfully"
    else
      redirect_to image_path, notice: "Image destroy unsuccessful"
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
end
