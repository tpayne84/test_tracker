class User < ActiveRecord::Base
	belongs_to :client
	has_many :records
	belongs_to :group

	default_scope :order => 'users.first_name ASC, users.last_name ASC'
	scope :by_client, ->(id) { where(:client_id => id)}

	def full_name
	@full_name = "#{first_name} #{last_name}"
	end
  
end
