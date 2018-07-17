class CommentsController < ApplicationController
  before_action :set_image

  def new
  end

  def create
    @comment = @image.comments.build(comment_params)
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        create_notification(@image, @comment)
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
      flash[:success] = "You smashed that comment"
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

  def create_notification(image, comment)
    return if image.user.id == current_user.id
    Notification.create(user_id: image.user.id, notified_by_id: current_user.id, image_id: image.id, comment_id: comment.id, notify_type: 'comment')
  end

end