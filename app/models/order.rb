class Order < ApplicationRecord
    belongs_to :buyer
    has_many   :items

    # with_options presence: true do
    # validates :buyer
    # validates :prefecture
    # validates :city
    # validates :address
    # validates :post_code
    # validates :phone_number
    # end
    # validates :building
end
