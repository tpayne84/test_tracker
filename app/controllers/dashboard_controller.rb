class DashboardController < ApplicationController
	helper_method :course_name

	def index
		@three_month_report = Record.where("pass = ? AND requal_date < ?", true, Date.today + 3.months)
		@two_month_report = Record.where("pass = ? AND requal_date < ?", true, Date.today + 2.months)
		@one_month_report = Record.where("pass = ? AND requal_date < ?", true, Date.today + 1.months)
	end

	def course_name(course_id)
		c = Course.find(course_id)
		@course_name = c.name
	end
end
