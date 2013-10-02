class Record < ActiveRecord::Base
	belongs_to :user
	has_one :course
end
