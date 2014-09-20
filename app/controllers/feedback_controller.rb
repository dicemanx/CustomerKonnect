class FeedbackController < ApplicationController


	def new
		@feedback = Feedback.new
		@business_options = Business.all.map do |b|
			[b.name, b.id]  		
		end
	end

	def create
		p params["shopper"]
		@shopper = Shopper.find_or_initialize_by(email: params["feedback"]["shopper"]["email"])
		@shopper.update_attributes(phone_number: params["feedback"]["shopper"]["phone_number"])
		redirect_to "/"
	end
end
