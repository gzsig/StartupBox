class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.references :startup, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
