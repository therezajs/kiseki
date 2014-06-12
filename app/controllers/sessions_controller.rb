class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username]).try(:authenticate, params[:session][:password])

  	if user == false || user.nil?
      p user
  		flash.now[:error] = "Invalid email/password combination."
  		render :new
  	else
  		sign_in user
  		redirect_to home_path
  	end
  end

  def destroy
  	sign_out
  	redirect_to root_path
  end
end
