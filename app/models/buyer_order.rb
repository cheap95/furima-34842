class BuyerOrder
    include ActiveModel::Model
    attr_accessor :user_id, :item_id, :condition_id, :category_id, :delivery_fee_id, :delivery_day_id, :area_id, :token, :city, :address, :post_code, :phone_number, :building

    
    with_options presence: true do
        
        #validates :item_id
        validates :user_id
        #validates :buyer_id

        #validates :buyer
        #validates :prefecture
        validates :city
        validates :address
        validates :post_code
        validates :phone_number
        validates :token
    end
     
    

        
    def save
    
    buyer = Buyer.create(user_id: user_id, item_id: item_id)
    Order.create(city: city, address: address, post_code: post_code, phone_number: phone_number, building: building, buyer_id: buyer.id )
    #prefectureはarea_idで使いまわせるため抜いている
    end
end