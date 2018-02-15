class RemoveColumnPointsFromResults < ActiveRecord::Migration[5.1]
  def change
  	remove_column :results, :points
  end
end
