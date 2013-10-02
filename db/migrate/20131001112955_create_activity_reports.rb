class CreateActivityReports < ActiveRecord::Migration
  def change
    create_table :activity_reports do |t|
      t.string :user_name
      t.string :course_name
      t.integer :score
      t.boolean :pass_fail
      t.date :date_taken
      t.date :requal_date

      t.timestamps
    end
  end
end
