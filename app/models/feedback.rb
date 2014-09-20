class Feedback < ActiveRecord::Base
	belongs_to :shopper
	belongs_to :business
	accepts_nested_attributes_for :shopper
end
