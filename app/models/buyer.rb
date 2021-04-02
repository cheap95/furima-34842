class Buyer < ApplicationRecord
    include ActiveModel::Model
    attr_accessor :buyer_id, :user_id, :item_id, :condition_id, :category_id, :delivery_fee_id, :delivery_day_id, :area_id

    
    with_options presence: true do
        
        validates :item_id
        validates :user_id
        #validates :buyer_id

        validates :buyer
        validates :prefecture
        validates :city
        validates :address
        validates :post_code
        validates :phone_number
    end
     
    

        
    def save
    
    buyer = Buyer.create(user_id: user_id, condition_id: condition_id, category_id: category_id, delivery_fee_id: delivery_fee_id, delivery_day_id: delivery_day_id, user_id: user_id, item_id: item_id)
    Order.create(item_id: item.id, prefecture: prefecture, city: city, address: address, post_code: post_code, phone_number: phone_number)
    end

    
    has_one    :order
    belongs_to :item
    #belongs_to :user
end
