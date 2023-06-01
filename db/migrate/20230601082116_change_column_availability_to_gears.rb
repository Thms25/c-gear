class ChangeColumnAvailabilityToGears < ActiveRecord::Migration[7.0]
  def up
    change_column :gears, :availability, :string
    change_column :gears, :availability, :date, using: 'availability::date'
  end

  def down
    change_column :gears, :availability, :string
    change_column :gears, :availability, :boolean
  end
end
