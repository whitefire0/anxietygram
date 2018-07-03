Comment.create!([
  {comment: "I'm stuck in the console", user_id: 2, image_id: 2},
  {comment: "Why are you always in the console?", user_id: 1, image_id: 2},
  {comment: "I tried to escape but I couldn't", user_id: 2, image_id: 2},
  {comment: "type 'quit'", user_id: 1, image_id: 2},
  {comment: "cool thnx", user_id: 2, image_id: 2},
  {comment: "I want to do a RegExp on that regexp", user_id: 3, image_id: 3},
  {comment: "lol", user_id: 3, image_id: 4},
  {comment: "all they need to do is put meat in their mouths", user_id: 3, image_id: 5},
  {comment: "thanks Ben", user_id: 3, image_id: 7},
  {comment: "I prefer chariots", user_id: 5, image_id: 4},
  {comment: "Have you tried orc? It is fouler than Sauron himself", user_id: 5, image_id: 5},
  {comment: "No", user_id: 5, image_id: 9},
  {comment: "Don't think, drink!", user_id: 1, image_id: 4},
  {comment: "Tesco's All Meaty Seasoning", user_id: 1, image_id: 5},
  {comment: "You are a commitment", user_id: 1, image_id: 6},
  {comment: "thanks Ben", user_id: 1, image_id: 7},
  {comment: "thanks", user_id: 4, image_id: 7}
])
Image.create!([
  {caption: "\"guuuuuuuuuuuurl let me taste some of yo cookies\"", graphic_file_name: "cookie_monster.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 69775, graphic_updated_at: "2018-07-03 09:39:14", user_id: 1},
  {caption: "new RegExp(?:(?:\\r\\n)?[ \\t])*(?:(?:(?:[^()<>@,;:\\\\\".\\[\\] \\000-\\031]+(?:(?:(?:\\r\\n)?[ \\t]   )+|\\Z|(?=[\\[\"()<>@,;:\\\\\".\\[\\]]))|\"(?:[^\\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[ \\t]))*\"(?:(?:   \\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\\".\\[\\] \\000-\\031]+(?:(?:(   ?:\\r\\n)?[ \\t])+|\\Z|(?=[\\[\"()<>@,;:\\\\\".\\[\\]]))|\"(?:[^\\\"\\r\\\\]|\\\\.|(?:(?:\\r\\n)?[    \\t]))*\"(?:(?:\\r\\n)?[ \\t])*))*@(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\\".\\[\\] \\000-\\0   31]+(?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\[\"()<>@,;:\\\\\".\\[\\]]))|\\[([^\\[\\]\\r\\\\]|\\\\.)*\\   ](?:(?:\\r\\n)?[ \\t])*)(?:\\.(?:(?:\\r\\n)?[ \\t])*(?:[^()<>@,;:\\\\\".\\[\\] \\000-\\031]+   (?:(?:(?:\\r\\n)?[ \\t])+|\\Z|(?=[\\[\"()<>@,;:\\\\\".\\[\\]])", graphic_file_name: "dat-code.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 97228, graphic_updated_at: "2018-07-03 09:57:05", user_id: 2},
  {caption: "New tesla Battle Royale mode released", graphic_file_name: "tesla_royale.png", graphic_content_type: "image/png", graphic_file_size: 996645, graphic_updated_at: "2018-07-03 09:58:43", user_id: 3},
  {caption: "SERIOUSLY FUCK VEGANS", graphic_file_name: "fish_house.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 85752, graphic_updated_at: "2018-07-03 09:59:02", user_id: 3},
  {caption: "The floor is a commitment", graphic_file_name: "the_floor_is_commitment.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 46887, graphic_updated_at: "2018-07-03 09:59:35", user_id: 4},
  {caption: "The Columbine High School massacre was a school shooting that occurred on April 20, 1999, at Columbine High School in Columbine,[3][4] an unincorporated area of Jefferson County, Colorado, United States, in the Denver metropolitan area. In addition to the shootings, the complex and highly planned attack involved a fire bomb to divert firefighters, propane tanks converted to bombs placed in the cafeteria, 99 explosive devices, and car bombs. The perpetrators, senior students Eric Harris and Dylan Klebold, murdered 12 students and one teacher. They injured 21 additional people, and three more were injured while attempting to escape the school. After exchanging gunfire with responding police officers, the pair subsequently committed suicide.[5][6]", graphic_file_name: "usa.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 84011, graphic_updated_at: "2018-07-03 10:00:06", user_id: 4},
  {caption: "Twitchy Chrome", graphic_file_name: "googlesec.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 18627, graphic_updated_at: "2018-07-03 12:53:47", user_id: 4},
  {caption: "Twitchy Chrome", graphic_file_name: "googlesec.jpg", graphic_content_type: "image/jpeg", graphic_file_size: 18627, graphic_updated_at: "2018-07-03 12:54:59", user_id: 4}
])
User.create!([
  {username: "Rick", email: "rickhallett@live.co.uk", password_digest: "$2a$10$ELOulqKJkUsHycgA4EUd1uSb0k0hvbnR3iiwBWau3/FQmUGHNKaWq"},
  {username: "Dan", email: "dan@atech.media", password_digest: "$2a$10$7kiDtMn/BeNMnRJnySdlV.qZkwfnX4JW0UpVgxRBLNcG5jiW7ZLM."},
  {username: "Adam", email: "adam@atech.media", password_digest: "$2a$10$nHr1o2XwiTSk/Id/vVapTOPkJ0z46StbrfiTrBId3oAdjWNScSDke"},
  {username: "Benq", email: "ben@atech.media", password_digest: "$2a$10$5KtuB6NoC4gvlvwp2.UKoONy7PVaB9kIqMX2Z4PX2Dx0bqAF0KB5a"},
  {username: "Gandalf", email: "gandalf@middleearth.com", password_digest: "$2a$10$5SvNoMZb7CaG9RMgCmaco.D9O6SjvqF7e.Q.RbO1xzPjNAMRZU2l6"}
])
