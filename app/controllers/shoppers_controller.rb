class ShoppersController < ApplicationController
  def index
  	session[:shopper_id] = nil
  end
end
