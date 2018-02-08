class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :race_id
      t.integer :driver_id
      t.integer :constructor_id
      t.integer :grid
      t.integer :position
      t.integer :rank

      t.timestamps
    end
  end
end
