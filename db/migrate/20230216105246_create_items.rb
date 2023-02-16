class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :brand,        null: false
      t.integer :category_id,  null: false
      t.string  :name,         null: false
      t.integer :star_id
      t.string  :memo

      t.timestamps
    end
  end
end
