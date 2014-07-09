class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :image
      t.string :name
      t.decimal :price
      t.string :memo

      t.timestamps
    end
  end
end
