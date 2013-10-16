class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :get_course_name, :get_course_min_score

  def get_course_min_score(course_id)
    @get_course_min_score = Course.find(course_id)
    @get_course_min_score = @get_course_min_score.min_score
  end

  def get_course_name(course_id)
    @get_course_name = Course.find(course_id)
    @get_course_name = @get_course_name.name
  end
end
