class AddEmailToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :notification_email, :string
  end
end
