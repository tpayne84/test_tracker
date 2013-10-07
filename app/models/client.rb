class Client < ActiveRecord::Base
	include PgSearch
	multisearchable :against => [:name]

	has_many :groups
	has_many :users
	has_many :records, through: :users
end
