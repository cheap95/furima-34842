class Item < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category_id, :area_id, :delivery_day_id, :delivery_fee, :condition_id
    belongs_to :user
    has_one    :buyer
    has_one_attached :image
    
    with_options presence: true do
        validates :user, foreign_key: true
        validates :prise
        validates :name
        validates :description
        validates :condition_id
        validates :category_id
        validates :delivery_fee_id
        validates :area_id
        validates :delivery_day_id
    end

    with_options  :title, :text, presence: true do
        validates :area_id, numericality: { other_than: 0 } 
        validates :category_id, numericality: { other_than: 0 } 
        validates :delivery_day_id, numericality: { other_than: 0 } 
        validates :delivery_fee_id, numericality: { other_than: 0 } 
        validates :condition_id, numericality: { other_than: 0 } 
    end
    
    
end

    