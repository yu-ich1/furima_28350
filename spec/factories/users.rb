FactoryBot.define do
  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {password}   
    first_name            {"山田"}
    family_name           {"太郎"}
    first_name_kana       {"ヤマダ"}
    family_name_kana      {"タロウ"}
    data                  {"1932-06-12"}
    _
  end
end
