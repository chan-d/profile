class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
			flash[:notice] = 'Successfully logged in!'
		else
			redirect_to root_path
			flash[:error] = "Incorrect email or password"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
