class CommentsController < ApplicationController
	def create
    c = Comment.new(username: params[:username], 
    	              email: params[:email], 
    	              content: params[:content],
    	              issue_id: params[:issue_id])
    c.save!
    redirect_to c.issue
	end
end
