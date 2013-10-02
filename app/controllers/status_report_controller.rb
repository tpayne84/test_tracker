class StatusReportController < ApplicationController
	helper_method :get_course_name

	def index
		@records = Record.all
	end

	def show
		@record = Record.find(params[:id])
	end

	def get_course_name(course_id)
		@course = Course.find(course_id)
		@course.name
	end

end
