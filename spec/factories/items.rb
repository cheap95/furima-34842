FactoryBot.define do
  factory :item do
    name { 'ははは' }
    description { '漢字' }
    category_id { 2 }
    condition_id { 2 }
    delivery_fee_id { 2 }
    area_id { 2 }
    delivery_day_id { 2 }
    price { 1000 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/tet_image.png'), filename: 'tet_image.png')
    end
  end
end
