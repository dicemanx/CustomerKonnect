class ShoppersController < ApplicationController
  def index
  	session[:shopper_id] = nil
  end

  def contact
  end

  def about
  end
  
end
