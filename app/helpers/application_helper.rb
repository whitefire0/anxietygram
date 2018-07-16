module ApplicationHelper
  def flash_class(level)
    case level
        when 'notice' then "alert alert-info"
        when 'success' then "alert alert-success"
        when 'error' then "alert alert-danger"
        when 'alert' then "alert alert-warning"
    end
  end

  def form_image_select(image)
    return image_tag image.graphic.url(:medium), id: 'image-preview', class: 'img-responsive' if image.graphic.exists?
    image_tag 'placeholder.png', id: 'image-preview', class: 'img-responsive'
  end

  def profile_avatar_select(user)
    return image_tag user.avatar.url(:medium), id: 'image-preview', class: 'img-responsive img-circle profile-image' if user.avatar.exists?
    image_tag 'default-avatar.png', id: 'image-preview', class: 'img-responsive img-circle profile-image'
  end
end