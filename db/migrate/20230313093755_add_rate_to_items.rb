class AddRateToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :rate, :float, default: 0
  end
end
