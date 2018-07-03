class CommentsController < ApplicationController
  def new
    # @comment = @image.comments.build
  end


  # a new comment will always be linked to an image, can this be determined by the params sent to #new?
  # the image id/caption/image can be passed to the new/edit form itself
  # on submit, pass the new comment params back along with the image id
    # the comment only needs to be saved with the image id.
    # on successful saving, redirect back to the image show

  def create
  end

  private

  def set_image
    # @image = Image.find(params[:image_id])
  end

end