FactoryBot.define do
  factory :buyer_order do
    city { 'あ' }
    address { '1 - 1 - 1' }
    post_code { '123-4567' }
    phone_number { '09012345678' }
    area_id { 4 }
    token { 'aaaaaaaaaaaaa' }
    building {'ビル'}
  end
end
