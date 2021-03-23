FactoryBot.define do
    factory :user do
        nickname {"aaaa"}
        email    {"fff@fff"}
        password {"a1a1a1"}
        password_confirmation {password}
        first_family_name {"あああ"}
        last_family_name  {"あああ"}
        first_family_name_kana {"アアア"}
        last_family_name_kana {"アアア"}
        birthday {1950,4,4}

    end
end