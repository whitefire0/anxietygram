class CommentsController < ApplicationController
  before_action :set_image

  def new
  end

  def create
    @comment = @image.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = "You commented the shit out of that post!"
      redirect_to :back
    else
      flash[:error] = "Check the comment form...that didn't work"
      redirect_to :back
    end

  end

  def destroy
    @comment = @image.comments.find(params[:id])

    if @comment.destroy
      flash[:success] = "You smashed that comment"
      redirect_to root_path
    else
      flash[:error] = "Unable to destroy comment"
      redirect_to :back
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