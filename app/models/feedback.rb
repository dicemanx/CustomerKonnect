class Feedback < ActiveRecord::Base
	belongs_to :shoppers
	belongs_to :businesses
	accepts_nested_attributes_for :shoppers
end
