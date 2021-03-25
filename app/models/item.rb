class Item < ApplicationRecord
    with_options presence: true do
        validates :User, foreign_key: true
        validates :prise
        validates :name
        validates :description
        validates :condition_id
        validates :category_id
        validates :delivery_fee_id
        validates :area_id
        validates :delivery_day_id
    end
    belongs_to :user
    has_one    :buyer
end

    