class AddForeignKeyConstructorsToConstructorResults < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :constructorresults, :constructors
  end
end
