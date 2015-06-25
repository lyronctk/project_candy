class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :nameFirst
      t.string :nameLast
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end