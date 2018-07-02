class ImagesController < ApplicationController
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
    @image = Image.find(params[:id])
    @comments = Comment.where(:image_id => params[:id])
  end

  # for each comment displayed in view, also display the username that maps to the user_id FK

  private

  def safe_user_params
    params.require(:image).permit(:graphic, :graphic_file_name, :caption)
  end
end
