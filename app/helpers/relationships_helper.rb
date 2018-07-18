module RelationshipsHelper
  def current_user_is_following(current_user, user)
    user.followers.include?(current_user)
  end
end
