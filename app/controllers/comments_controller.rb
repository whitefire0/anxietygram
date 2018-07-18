class CommentsController < ApplicationController
  before_action :set_image

  def new
  end

  def create
    @comment = @image.comments.build(comment_params)
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to images_path }
        format.js
      else
        format.html do
          flash[:error] = "Check the comment form...that didn't work"
          redirect_to images_path
        end
        format.js
      end
    end
  end

  def destroy
    @comment = @image.comments.find(params[:id])

    if @comment.user_id == current_user.id
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to images_path }
        format.js
      end
    else
      flash[:error] = "Unable to destroy comment"
      redirect_to images_path
    end
  end

  private

  def set_image
    @image = Image.find(params[:image_id])
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

end