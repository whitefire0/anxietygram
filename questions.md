Goal: Dynamically render image index page depending on whether the user is currently following anyone
        If they are, display only the images of people they are following

Attempt 1:
  dynamic view: if no images sent to view from Images#Index, render a link to Images#display_all, which collects all the images and redirects to views/images/display_all.html.haml

  Problem: seems cack - redirection should be the responsibility of the controller

Attempt 2:
  dynamic controller: Images#index determines whether or not the following scope returns any images
    if it does, redirect to views/images/show_following_images
    if it doesn't, redirect to views/images/show_all_images

  Problem: how do we get route <get 'images', to: 'images#index'> to map to Images#index, which can then access either 












TODO:
  - Add 'all users' to the nav bar, so that people can find more people to follow