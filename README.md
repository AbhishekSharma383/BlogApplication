
## Overview

This is a blog application builded using Ruby on Rails. This application allows users to create, read, update, and delete blog posts. Each post  have a title, content, and a publication date. Additionally, users are able to add comments to each post after they are logged in to the system . Each comment  contains the user's name and the comment text.
Web application is created using Object relation mapping where users can create and publish blogs.

## Schema


* User has many Posts and many Comments.
* Post belongs to User and has many Comments.
* Comment belongs to Post and belongs to User.



+-------------------------+              +-------------------------+              +-------------------------+
|          User           |              |          Post           |              |        Comment          |
+-------------------------+              +-------------------------+              +-------------------------+
| id                      |<---+         | id                      |<---+         | id                      |
| email                   |    |         | title                   |    |         | body                    |
| encrypted_password      |    +-------> | content                 |    +-------> | post_id                 |
| reset_password_token    |    +-------> | user_id                 |    +-------> | user_id                 |
| reset_password_sent_at  |              | author                  |              | created_at              |
| remember_created_at     |              | status                  |              | updated_at              |
| created_at              |              | creation_date           |              +-------------------------+
| updated_at              |              | published_date          |
+-------------------------+              | image                   |
                                          | video                   |
                                          | created_at              |
                                          | updated_at              |
                                          +-------------------------+




The post and comment have 1 to many active record association meaning 1 post can have many comments. In future I plan to incorporate advanced concepts such as polymorphic associations in this web app.<br>
![ERD](./images/1.ERD.png)

## How to run this project locally?
1. Fork the project.
2. Run `bundle install`
3. Run `rake db:migrate`
4. Run `bin/rails server`




1. Clone the repository in to you're machine . 
2. I have Used -> 
   * Ruby 3.1.2 
3. So check , the ruby versions in you're system and make the necessarey changes using rbenv or RVM whichever suitable to manage ruby versions . 
4. Check Gemfile . 
5. Run `bundle install`
6. Run `rake db:migrate`
7. Run rails s on your local host i.e (http://localhost:3000)

## Authentication

* For Authentaication I have used devise Gem Functionality. 
You can see Login , Sign up , Logout features . 
I have customised the defualt view of devise Gem .



* I am attaching , the Screenshots , of the Web Application Below . 

  Sign Up Page  ->  ![alt text](<SignUp Page.png>)
  Log In Page ->  ![alt text](<Log In Page.png>)
  Home Page ->  ![alt text](Homepage.png)
  Adding New Post To App-> ![alt text](<New Post Functionality.png>)
  Edit Post Function ->   ![alt text](<Edit Post Functionality.png>)
  Edit And Delete Function to Authenticated users -> ![alt text](<Edit and Delete functionality on a apost available to signed in user to his own posts .png>)
  Comments Visisble on Post Of all Users -> ![alt text](<Different Users Comments Visible On Post.png>)
  Delete Comment Functionality , For Authenticated Users :: ![alt text](<Delete comment functionality only to comments user .png>)
  LogOut Function -> ![alt text](<Logout Functionality.png>)