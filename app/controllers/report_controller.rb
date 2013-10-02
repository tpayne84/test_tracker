class ReportController < ApplicationController
	helper_method :find_course

  def activity
  	@activity = ActivityReport.new
  	record = Record.find(params[:id]) 
  	@activity.user_name = User.find(record.user_id)
  	course = Course.find(record.course_id)
  	@activity.course_name = course.name
  	@activity.score = record.score
  	@activity.pass_fail = record.pass
  	@activity.date_taken = record.completed_date
  	@activity.requal_date = record.completed_date + course.requal_interval.months
  end


  def course_name(course_id)
  	@course_name = Course.find(course_id)
  	@course_name = @course_name.name
  end

  def status
  end
 
 params.require(:record).permit(:course_id, :score, :pass, :completed_date, :user_id, :requal_date)
end
