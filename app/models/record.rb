class Record < ActiveRecord::Base
	belongs_to :user
	has_one :course
	has_one :client, through: :user
	has_one :group, through: :user
end
