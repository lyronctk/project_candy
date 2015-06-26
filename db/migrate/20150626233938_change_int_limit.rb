class ChangeIntLimit < ActiveRecord::Migration
  def change
  	change_column :orders, :phone, :integer, :limit => 12
  	change_column :orders, :alternatePhone, :integer, :limit => 12
  end
end
