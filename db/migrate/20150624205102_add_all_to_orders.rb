class AddAllToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :alternatePhone, :integer, :limit => nil
    add_column :orders, :addressLine2, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :zipCode, :integer, :limit => nil
    add_column :orders, :orderNotes, :string
  end
end