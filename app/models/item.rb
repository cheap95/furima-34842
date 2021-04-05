class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :area
  belongs_to_active_hash :delivery_day
  belongs_to_active_hash :delivery_fee
  belongs_to_active_hash :condition

  belongs_to :user
  belongs_to :order
  has_one    :buyer
  has_one_attached :image

  with_options presence: true do
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
    validates :name
    validates :description
    validates :condition_id
    validates :category_id
    validates :delivery_fee_id
    validates :area_id
    validates :delivery_day_id
    validates :image
    validates :user_id
  end
  VALID_DELIVERY_FEE_REGEX = /[0-9\d]/.freeze
  validates :price, format: { with: VALID_DELIVERY_FEE_REGEX }

  with_options numericality: { other_than: 0 } do
    validates :area_id
    validates :category_id
    validates :delivery_day_id
    validates :delivery_fee_id
    validates :condition_id
  end
end
