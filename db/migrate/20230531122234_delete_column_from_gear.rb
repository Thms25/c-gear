class DeleteColumnFromGear < ActiveRecord::Migration[7.0]
  def change
    remove_column :gears, :image_url
  end
end
