class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :last_name
      t.string :linkedin

      t.timestamps
    end
  end
end
