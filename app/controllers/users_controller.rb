class UsersController < ApplicationController

	def edit
		user = User.find(params[:id])
		@username = user.username
	end

	def update
		if user_id == current_user.id
			user.update(user_params)
		end

	end

	private
	def user_params
		params.permit(:text)
	end