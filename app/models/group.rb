class Group < ActiveRecord::Base
	belongs_to :client
	has_many :users

	scope :by_client, ->(id) { where(:client_id => id)}
end
