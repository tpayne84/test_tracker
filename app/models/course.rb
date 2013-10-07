class Course < ActiveRecord::Base
	include PgSearch
	multisearchable :against => [:name]

end
