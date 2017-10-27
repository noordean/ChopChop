class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.string :product_price
      t.string :receiver_name
      t.string :receiver_address     
      t.string :receiver_number
      t.string :receiver_email
      t.timestamps
    end
  end
end
