class ChangeColumnToGearsArray < ActiveRecord::Migration[7.0]
  def change
    remove_column :gears, :availability, :date
    add_column :gears, :unavailabilities, :string, array: true, default: []
  end
end
