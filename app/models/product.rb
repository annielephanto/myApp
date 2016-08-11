class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments



def highest_rating
  comments.rating_desc.first
end
end