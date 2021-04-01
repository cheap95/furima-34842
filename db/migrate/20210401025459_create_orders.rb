class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references  :buyer,        null: false, foreign_key: true
      t.integer     :prefecture,   null: false
      t.string      :city,         null: false
      t.string      :building
      t.string      :address,      null: false
      t.string      :post_code,    null: false
      t.string      :phone_number, null: false
      t.timestamps
    end
  end
end
