class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references   :user,              null: false, foreign_key: true
      t.integer     :price,             null: false
      t.string      :name,              null: false
      t.text        :description,       null: false
      t.integer     :icondition_id,     null: false
      t.integer     :category_id,       null: false
      t.integer     :delivery_fee_id,   null: false
      t.integer     :area_id,           null: false
      t.integer     :delivery_day_id,   null: false
      t.timestamps
    end
  end
end
