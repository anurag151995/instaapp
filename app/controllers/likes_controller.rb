class LikesController < ApplicationController
	def create
		@post = Post.find(params[:format])
			if @post.likes.where(user_id: current_user.id).present?
			  @post.likes.where(user_id: current_user.id).destroy_all
			else
			  @post.likes.create(user_id: current_user.id)
			end
			 respond_to do |format|
			  format.js
			 end
	end
end