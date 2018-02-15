class AddForeignKeyConstructorsToResults < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :results, :constructors
  end
end
