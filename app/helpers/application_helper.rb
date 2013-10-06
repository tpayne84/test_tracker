module ApplicationHelper

	def full_title(page_title)
		base_title = 'Records Tracker'
		if page_title.empty?
		  base_title
		else
		  "#{base_title} | #{page_title}"
		end
	end

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
