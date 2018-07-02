class ImagesController < ApplicationController
  
  def index
  end

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(safe_user_params)
    if @image.save
      redirect_to image_path(@image), notice: "Image submitted successfully"
    else
      redirect_to new_image_path, notice: "Image submission error"
    end
  end

  def show
    @image = Image.find_by(params[:id])
  end

  private

  def safe_user_params
    params.require(:image).permit(:graphic, :graphic_file_name, :caption)
  end
end
