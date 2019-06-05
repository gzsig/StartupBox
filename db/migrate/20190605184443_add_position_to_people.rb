class AddPositionToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :position, :string
  end
end
