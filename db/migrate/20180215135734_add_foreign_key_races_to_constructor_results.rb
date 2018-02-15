class AddForeignKeyRacesToConstructorResults < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :constructorresults, :races
  end
end
