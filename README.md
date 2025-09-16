# Members Only

A beginner Ruby on Rails project from [The Odin Project](https://www.theodinproject.com/)'s curriculum. This app is a simple “members-only” clubhouse where registered users can post stories. Users inside the clubhouse can see the author of each post, while to users who are outside, posts appear anonymous.

## Features

- User authentication using **Devise**
- Users can **sign up, log in, and log out**
- Users can **create posts**
- Posts are associated with the author, but display anonymously to non-logged-in users

## Models

- **User**: stores username and authentication info
- **Post**: stores title, body, and which user a post belongs to
