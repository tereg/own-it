class Subject < ActiveRecord::Base
  belongs_to 	:user
  has_many 		:videos
  has_many		:articles
  # Remember to create a migration!
end
