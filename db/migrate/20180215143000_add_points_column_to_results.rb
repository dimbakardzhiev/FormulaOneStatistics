class AddPointsColumnToResults < ActiveRecord::Migration[5.1]
  def change
  	add_column :results, :points, :decimal
  end
end
