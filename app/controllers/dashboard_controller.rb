class DashboardController < ApplicationController
	helper_method :course_name

	def index
		@three_month_report = Record.where("pass = ? AND requal_date < ? AND requal_date > ?", true, Date.today + 3.months, Date.today + 2.months).page(params[:page]).per_page(10)
		@two_month_report = Record.where("pass = ? AND requal_date < ? AND requal_date > ?", true, Date.today + 2.months, Date.today + 1.month).page(params[:page]).per_page(10)
		@one_month_report = Record.where("pass = ? AND requal_date > ? AND requal_date < ?", true, Date.today, Date.today + 1.months).page(params[:page]).per_page(10)
		@expired_report = Record.where("pass = ? AND requal_date < ?", true, Date.today).page(params[:page]).per_page(10)
	end

	def course_name(course_id)
		c = Course.find(course_id)
		@course_name = c.name
	end
end
