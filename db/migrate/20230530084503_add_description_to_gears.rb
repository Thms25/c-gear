class AddDescriptionToGears < ActiveRecord::Migration[7.0]
  def change
    add_column :gears, :description, :string
  end
end
