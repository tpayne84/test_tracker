class Record < ActiveRecord::Base
	belongs_to :user
	has_one :course
	has_one :client, through: :user
	has_one :group, through: :user

	scope :by_client, ->(id) { where(:client_id => id)}
	scope :by_group, ->(id) { where(:group_id => id)}
	scope :by_user, ->(id) { where(:user_id => id)}

end
