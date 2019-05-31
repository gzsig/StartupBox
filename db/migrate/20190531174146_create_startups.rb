class CreateStartups < ActiveRecord::Migration[5.2]
  def change
    create_table :startups do |t|
      t.string :name
      t.string :website
      t.string :logo
      t.string :pitch
      t.text :about
      t.string :founded
      t.string :number_of_employees
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :youtube
      t.string :linkedin
      t.string :market

      t.timestamps
    end
  end
end
