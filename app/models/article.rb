class Article < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category, :area, :delivery_day, :delivery_fee, :condition
    belongs_to :item
  
  validates :title, :text, presence: true
  
  validates :area_id, numericality: { other_than: 0 } 
  validates :category_id, numericality: { other_than: 0 } 
  validates :delivery_day_id, numericality: { other_than: 0 } 
  validates :delivery_fee_id, numericality: { other_than: 0 } 
  validates :condition_id, numericality: { other_than: 0 } 
end
