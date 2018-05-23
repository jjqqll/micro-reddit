# The Odin Project: Ruby on Rails - Project: Building with Active Record

## This is Project 2: Micro-Reddit

The goal of this project is to build a very junior version of Reddit called micro-reddit. In this project, I built the data structures necessary to support link(post) submissions and commenting. I didn't build a front end for it because I can use the Rails console to play around with models without the overhead of making HTTP requests and involving controllers or views.

## Data Models

```
Users
  Attributes:  
		username: string
			validations: presence, length, uniqueness
		email: string
			validations: presence, length

	Associations:
		has_many posts
		has_many comments

Posts
	Attributes:
		title: string
			validation: presence, length
		url: string
			validation: presence, length

	Associations:
		belongs_to user
			user_id
		has_many comments

Comments
	Attributes:
		comment: string
			validation: presence, length

	Associations:
		belongs_to user
			user_id
		belongs_to post
			post_id
```
