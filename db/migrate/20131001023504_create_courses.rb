class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :requal_interval

      t.timestamps
    end
  end
end
