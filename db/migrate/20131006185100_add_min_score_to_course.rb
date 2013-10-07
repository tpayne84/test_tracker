class AddMinScoreToCourse < ActiveRecord::Migration
  def change
  	add_column :courses, :min_score, :integer
  end
end
