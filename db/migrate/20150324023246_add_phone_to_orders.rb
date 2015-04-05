class AddPhoneToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :phone, :integer, :limit => nil
  end
end
