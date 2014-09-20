class Feedback < ActiveRecord::Base
	belongs_to: :shoppers
	belongs_to: :businesses
end
