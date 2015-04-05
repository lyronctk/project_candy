class AddAllToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :alternatePhone, :integer
    add_column :orders, :addressLine2, :string
    add_column :orders, :addressLine3, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :zipCode, :integer
  end
end
