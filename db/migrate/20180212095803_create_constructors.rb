class CreateConstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :constructors do |t|
      t.string :name
      t.string :nationality

      t.timestamps
    end
  end
end
