class ChangeFeaturesToCategoryFromGears < ActiveRecord::Migration[7.0]
  def change
    rename_column :gears, :features, :category
  end
end
