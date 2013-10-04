class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :badge_expired, :badge_soon, :badge_good


  def badge_expired
  	rec = Record.where("pass = ? AND requal_date < ?", true, Date.today)
  	@badge_expired = rec.length
  end

  def badge_soon
  	rec = Record.where("pass = ? AND requal_date < ? AND requal_date > ?", true, Date.today + 3.months, Date.today)
  	@badge_soon = rec.length
  end

  def badge_good
  	rec = Record.where("pass = ? AND requal_date > ?", true, Date.today + 3.months)
  	@badge_good = rec.length
  end



end
