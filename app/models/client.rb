class Client < ActiveRecord::Base
	has_many :groups
	has_many :users
	has_many :records, through: :users
end
