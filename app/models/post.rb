class Post < ActiveRecord::Base 
#this active record code lets us interface with database (db)
# This post model is a class
# A post instance is an object representing our db table called posts
# it has attributes called title, body, etc. corresponding to the columns in the table

#Validate data forms here:
validates :title, presence: true, uniqueness: true
validates :body, length: {minimum: 50}

end
