class AddForeignKeyCircuitsToRaces < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :races, :circuits
  end
end
