class AddClientIdToGroups < ActiveRecord::Migration
  def change
  	add_column :groups, :client_id, :integer
  end
end
