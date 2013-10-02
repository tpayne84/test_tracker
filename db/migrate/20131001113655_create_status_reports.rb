class CreateStatusReports < ActiveRecord::Migration
  def change
    create_table :status_reports do |t|
      t.string :user_name
      t.string :course_name
      t.date :date_taken
      t.date :requal_date
      t.boolean :status

      t.timestamps
    end
  end
end
