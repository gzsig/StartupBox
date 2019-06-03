class AddLocationToStartups < ActiveRecord::Migration[5.2]
  def change
    add_column :startups, :location, :string
  end
end
