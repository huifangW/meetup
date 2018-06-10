class PageController < ApplicationController
	def welcome
		@issues = Issue.all.order('created_at DESC')
	end
end