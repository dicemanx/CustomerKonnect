class SessionsController < ApplicationController

  def new
  end

  def create
    @user = Business.authenticate(params[:email],params[:password]);
    if @user
      session[:user_id] = @user.id;
      redirect_to get_feedback_business_path(@user)
    else
      error[:base] = "Wrong Log In !! Please try again"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_url, :notice => "Logged out!"
  end

end
 
