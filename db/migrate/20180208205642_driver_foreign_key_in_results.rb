class DriverForeignKeyInResults < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :results, :drivers
  end
end
