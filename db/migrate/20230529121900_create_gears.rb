class CreateGears < ActiveRecord::Migration[7.0]
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :price
      t.boolean :availability
      t.string :features
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
