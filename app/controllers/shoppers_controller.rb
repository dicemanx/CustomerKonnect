class ShoppersController < ApplicationController
  def index
  	@business_options = Business.all.map do |b|
  		[b.name, b.id]  		
  	end
  	@businesses = Business.all
  end
end
