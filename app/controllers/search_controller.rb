class SearchController < ApplicationController

	def index
		if params.include?(:q)
			@results = User.multisearch(params[:q])
			raise @results.inspect
		else
			@results = []
		end
	end

end
