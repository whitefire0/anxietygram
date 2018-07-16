module ImagesHelper
  def display_likes(image)
    # votes variable is set to the likes by users.
    votes = image.votes_for.up.by_type(User)
    return list_likers(votes) if votes.size <= 8
    count_likers(votes)
  end

  def list_likers(votes)
    # set user_names variable as an empty array
    usernames = []
    # unless there are no likes, continue below.
    unless votes.blank?
      # iterate through the voters of each vote (the users who liked the post)
      votes.voters.each do |voter|
        # add the user_name as a link to the array
        usernames.push(link_to voter.username, profile_path(voter.username), class: 'user-name')
      end
      # present the array as a nice sentence using the as_sentence method and also make it usable within our html.Then call the like_plural method with the votes variable we set earlier as the argument.
      usernames.to_sentence.html_safe + like_plural(votes)
    end 
  end

  def count_likers(votes)
    vote_count = votes.size
    vote_count.to_s + ' likes'
  end

  def liked_image(image)
    user = current_user
    return 'glyphicon-heart' if user.voted_for? image
    'glyphicon-heart-empty'
  end

  private

  def like_plural(votes)
    # If we more than one like for a post, use ' like this'
    return ' like this' if votes.count > 1
    # Otherwise, return ' likes this'
    ' likes this'
  end
end


