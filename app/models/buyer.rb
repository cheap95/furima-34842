class Buyer < ApplicationRecord
    include ActiveModel::Model
    attr_accessor :prefecture, :user_id, :item_id, :buyer_id, :city, :building, :address, :post_code, :phone_number, :price, :name, :description, :condition_id, :category_id, :delivery_fee_id, :delivery_day_id, :image, :area_id

    
    with_options presence: true do
        
        validates :item_id
        validates :user_id
        validates :buyer_id

        validates :prefecture
        validates :city
        validates :address
        validates :post_code
        validates :phone_number
  
        validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
        validates :name
        validates :description
        validates :condition_id
        validates :category_id
        validates :delivery_fee_id
        validates :area_id
        validates :delivery_day_id
        validates :image
    end
    
        VALID_DELIVERY_FEE_REGEX = /[0-9\d]/.freeze
    validates :price, format: { with: VALID_DELIVERY_FEE_REGEX }

         
    with_options numericality: { other_than: 0 }  do
        validates :area_id
        validates :category_id
        validates :delivery_day_id
        validates :delivery_fee_id
        validates :condition_id
    end
        # validates :building

    def save
    
    item = Item.create(user_id: user_id, price: price, name: name, description: description, condition_id: condition_id, category_id: category_id, delivery_fee_id: delivery_fee_id, delivery_day_id: delivery_day_id, image: image, user_id: user_id, item_id: item_id)
    Order.create(item_id: item.id, prefecture: prefecture, city: city, address: address, post_code: post_code, phone_number: phone_number)
    end

    
    has_one    :order
    belongs_to :item
    #belongs_to :user
end
