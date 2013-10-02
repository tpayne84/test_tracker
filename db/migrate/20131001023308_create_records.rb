class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :course_id
      t.integer :score
      t.boolean :pass
      t.date :completed_date
      t.date :requal_date
      t.integer :user_id

      t.timestamps
    end
  end
end
