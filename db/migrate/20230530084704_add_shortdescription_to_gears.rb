class AddShortdescriptionToGears < ActiveRecord::Migration[7.0]
  def change
    add_column :gears, :short_description, :string
  end
end
