class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category
    belongs_to_active_hash :area
    belongs_to_active_hash :delivery_day
    belongs_to_active_hash :delivery_fee
    belongs_to_active_hash :condition
    
    belongs_to :user
    belongs_to :order ,optional: true
    has_one    :buyer
    has_one_attached :image

    
    
end

    