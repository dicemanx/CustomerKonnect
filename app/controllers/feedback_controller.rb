class FeedbackController < ApplicationController
	def new
		@feedback = Feedback.new
		@business_options = Business.all.map do |b|
			[b.name, b.id]  		
		end
	end

	def create
		@shopper = Shopper.find_or_initialize_by(email: params["feedback"]["shoppers"]["email"])
		@shopper.update_attributes(phone_number: params["feedback"]["shoppers"]["phone_number"])
		session[:value] = true
		session[:shopper_id] = @shopper.id

		@feedback = Feedback.create(feedback_params)
		@feedback.update_attributes(shopper: @shopper)
		redirect_to :feedback_index

	end

	def index
		@shopper = Shopper.find(session[:shopper_id])
		@feedbacks = Feedback.where(shopper: @shopper)
	end

	def feedback_params
		params.require(:feedback).permit(:description, :business_id, :shopper)
	end
end
