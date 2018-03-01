class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :forename
      t.string :surname
      t.date :dob
      t.string :nationality

      t.timestamps
    end
  end
end
