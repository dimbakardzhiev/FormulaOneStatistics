class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.integer :year
      t.integer :round
      t.integer :circuit_id
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
