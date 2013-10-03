class User < ActiveRecord::Base
belongs_to :client
has_many :records
belongs_to :group

  def full_name
    @full_name = "#{first_name} #{last_name}"
  end
  
end
