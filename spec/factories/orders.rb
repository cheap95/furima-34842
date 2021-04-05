FactoryBot.define do
  factory :order do
    city {"あ"}
    address {1-1-1}
    post_code {123-4567}
    phone_number {09012345678}
    area_id {4}
  end
end
