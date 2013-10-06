class StatusReportController < ApplicationController
	helper_method :get_course_name

	def index
	    #raise  params.inspect
      if params.include?(:client)
        @records = User.find_by_id(params[:client][:user_id])
        if @records.nil?
          flash[:error] = "Please select a Company and User"
        else
          @records = @records.records.page(params[:page]).per_page(10)
        end
      else
        @records = Record.page(params[:page]).per_page(10)
      end
	end

	def get_course_name(course_id)
		@course = Course.find(course_id)
		@course.name
	end
	
end
