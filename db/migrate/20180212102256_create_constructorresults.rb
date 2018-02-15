class CreateConstructorresults < ActiveRecord::Migration[5.1]
  def change
    create_table :constructorresults do |t|
      t.integer :race_id
      t.integer :constructor_id
      t.integer :points

      t.timestamps
    end
  end
end
