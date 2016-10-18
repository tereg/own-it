class Subject < ActiveRecord::Base
  belongs_to 	:user
  has_many 		:videos
  # Remember to create a migration!
end
