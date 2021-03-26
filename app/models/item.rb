class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category
    belongs_to_active_hash :area
    belongs_to_active_hash :delivery_day
    belongs_to_active_hash :delivery_fee
    belongs_to_active_hash :condition
    belongs_to :user
    has_one    :buyer
    has_one_attached :image

    
    with_options presence: true do
        validates :price
        validates :name
        validates :description
        validates :condition_id
        validates :category_id
        validates :delivery_fee_id
        validates :area_id
        validates :delivery_day_id
        validates :image
    end

         #validates :title, :text, presence: true

         validates :area_id, numericality: { other_than: 0 } 
         validates :category_id, numericality: { other_than: 0 } 
         validates :delivery_day_id, numericality: { other_than: 0 } 
         validates :delivery_fee_id, numericality: { other_than: 0 } 
         validates :condition_id, numericality: { other_than: 0 } 




    
end

    