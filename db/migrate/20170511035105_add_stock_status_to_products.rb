class AddStockStatusToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :stock_status, :boolean, default: true
  end
end
