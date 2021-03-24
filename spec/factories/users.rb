FactoryBot.define do
    factory :user do
        nickname {"aa"}
        email    {"aaaa@a"}
        password {"sss111"}
        #Faker::Internet.password(min_length: 6)
        password_confirmation {password}
        first_family_name {"あ"}
        last_family_name  {"あ"}
        first_family_name_kana {"ア"}
        last_family_name_kana {"ア"}
        birthday {"1999-01-01"}

    end
end