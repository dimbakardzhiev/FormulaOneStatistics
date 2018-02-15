class AddForeignKeyRacesToResults < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :results, :races
  end
end
