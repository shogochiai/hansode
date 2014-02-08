class CreateEstimateItems < ActiveRecord::Migration
  def change
    create_table :estimate_items do |t|
      t.integer :estimate_id
      t.string :title
      t.integer :price
      t.integer :order

      t.timestamps
    end
  end
end
