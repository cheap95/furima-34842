class BuyerOrder
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :area_id, :token, :city,
                :address, :post_code, :phone_number, :building

  with_options presence: true do
    validates :item_id
    validates :user_id

    validates :city, format: { with: /\A[ぁ-んァ-ン一-龥々]+\z/ }
    validates :address
    validates :post_code, format: { with: /\A\d{3}-\d{4}\z/ }
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
    validates :token
    validates :area_id, numericality: { other_than: 0 }
  end

  def save
    buyer = Buyer.create(user_id: user_id, item_id: item_id)
    Order.create(city: city, address: address, post_code: post_code, phone_number: phone_number, building: building,
                 buyer_id: buyer.id, area_id: area_id)
    # prefectureはarea_idで使いまわせるため抜いている
  end
end
