User.create!([
  {username: "rick", email: "rick@atech.media", password_digest: "$2a$10$YVYxPrQCczhEzLSTrhANDuEUns/xt68Yh0NjOtUS.gUZ6SnrT5ynC", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: "Hello hello"},
  {username: "adam", email: "adam@atech.media", password_digest: "$2a$10$DnfF9uBffBmiUk/E4GXc8e0kZ2s3hCaV.3q2JLhHjBPnHyeWWw912", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "danw", email: "danw@atech.media", password_digest: "$2a$10$QWhlsrivDrTsIOUTvF/VoeS7XROAKMT5vAC5aSYDCvE5h1O1.UUye", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "rob", email: "rob@atech.media", password_digest: "$2a$10$YJ/wN9RHkVvfnM2gjJiBEeWqfs8xYovt4pZt46FMZmI4.XdUf/iW2", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "ben", email: "ben@atech.media", password_digest: "$2a$10$rt3FjFGkXIUSirJnLVRkweT4zktyCjj32qzaU2k7TynE1sV5fIpWa", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "danq", email: "danq@atech.media", password_digest: "$2a$10$rduamPAOQ4tKKCw3r9NdlubIBKlUfdYEu8fmIiU8m8XDCzRNQ51k.", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "charlie", email: "charlie@atech.media", password_digest: "$2a$10$fxVDMnrPiQQXpGGpGqR5hOT/N.OKh69/5.Px6V6TfOm2jrwi3Bly.", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "nah", email: "nah@nah.com", password_digest: "$2a$10$r.tFcSwVdaGsUIPnSqx0K.DzbjN5HroLUAsXGknjYZYlWyCsfuYx6", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {username: "new", email: "new@new.com", password_digest: "$2a$10$p3kSySmWUbVSFDeZ/4RPke/ahb7po7YMol0GrOa37dKI47zu9BUF6", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil}
])
Image.create!([
  {caption: "Pushing to github before checking render on IE", graphic_file_name: "1czdJKFSGsdSLM4tHAqE3XWY_KdsPxo9364VcJuwFrQ.png", graphic_content_type: "image/png", graphic_file_size: 505151, graphic_updated_at: "2018-07-12 10:06:47", user_id: 1},
  {caption: "How I use windows powershell", graphic_file_name: "i40a9xu0x9911.png", graphic_content_type: "image/png", graphic_file_size: 3400, graphic_updated_at: "2018-07-12 10:10:00", user_id: 3},
  {caption: "Chuck making me some dinner", graphic_file_name: "chuck.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 60251, graphic_updated_at: "2018-07-12 10:39:06", user_id: 3},
  {caption: "lol", graphic_file_name: "impossibru.png", graphic_content_type: "image/png", graphic_file_size: 148843, graphic_updated_at: "2018-07-12 10:39:31", user_id: 6},
  {caption: "I order massive amounts drugs directly to my company office and no one even knows", graphic_file_name: "kermit.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 63775, graphic_updated_at: "2018-07-12 10:40:25", user_id: 6},
  {caption: "My secret", graphic_file_name: "k5KDlk4hT6ABD4HocB0U67g8U0g_vYfXRlEJtU7ltys.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 69193, graphic_updated_at: "2018-07-12 10:40:57", user_id: 5},
  {caption: "Ah, sundays", graphic_file_name: "kermit2.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 73259, graphic_updated_at: "2018-07-12 10:41:18", user_id: 5},
  {caption: "FUCKING CODEBASE PIECE OF SHIT", graphic_file_name: "kermit3.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 56256, graphic_updated_at: "2018-07-12 10:41:42", user_id: 6},
  {caption: "yup", graphic_file_name: "productive.png", graphic_content_type: "image/png", graphic_file_size: 347307, graphic_updated_at: "2018-07-12 10:42:09", user_id: 4},
  {caption: "aaaannnd I'm getting married soon", graphic_file_name: "raptor.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 32461, graphic_updated_at: "2018-07-12 10:42:24", user_id: 4},
  {caption: "The more of your data I gather, the more I understand what it means to be human (PS - codebase server 1 now has 6400Gb of ram :) )", graphic_file_name: "zucc-lizard.png", graphic_content_type: "image/png", graphic_file_size: 593869, graphic_updated_at: "2018-07-12 10:43:29", user_id: 7},
  {caption: "the quieter you are, the more you can hear", graphic_file_name: "kaliwp.png", graphic_content_type: "image/png", graphic_file_size: 133949, graphic_updated_at: "2018-07-18 10:55:11", user_id: 1},
  {caption: "nah", graphic_file_name: "kaliwp.png", graphic_content_type: "image/png", graphic_file_size: 133949, graphic_updated_at: "2018-07-19 14:56:17", user_id: 1}
])
Comment.create!([
  {comment: "linux ftw lol", user_id: 3, image_id: 1},
  {comment: "actually I do use windows", user_id: 3, image_id: 2},
  {comment: "linux masterrace", user_id: 7, image_id: 1},
  {comment: "well", user_id: 1, image_id: 6},
  {comment: "testing from private browser", user_id: 3, image_id: 12},
  {comment: "1", user_id: 3, image_id: 1},
  {comment: "2", user_id: 3, image_id: 12},
  {comment: "d", user_id: 3, image_id: 2}
])
Notification.create!([
  {user_id: 6, subscribed_user_id: nil, image_id: 4, notify_type: "comment", read: nil, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: nil, notified_by_id: 1},
  {user_id: 1, subscribed_user_id: nil, image_id: 12, notify_type: "comment", read: true, notified_by_id: 3},
  {user_id: 1, subscribed_user_id: nil, image_id: 1, notify_type: "comment", read: true, notified_by_id: 3},
  {user_id: 1, subscribed_user_id: nil, image_id: 12, notify_type: "comment", read: true, notified_by_id: 3},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: true, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: true, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: true, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: nil, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: nil, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: nil, notified_by_id: 1},
  {user_id: 3, subscribed_user_id: nil, image_id: 2, notify_type: "comment", read: nil, notified_by_id: 1}
])
ActsAsVotable::Vote.create!([
  {votable_type: "Image", votable_id: 1, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 1, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 1, voter_type: "User", voter_id: 5, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 4, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Image", votable_id: 3, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1}
])
Follow.create!([
  {following_id: 3, follower_id: 1},
  {following_id: 5, follower_id: 1}
])

