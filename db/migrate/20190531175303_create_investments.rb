class CreateInvestments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.references :startup, foreign_key: true
      t.references :person, foreign_key: true
      t.integer :amount

      t.timestamps
    end
  end
end
