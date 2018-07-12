class AddOrderItemsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :order_item, :integer
  end
end
