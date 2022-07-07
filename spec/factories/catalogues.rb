FactoryBot.define do
  factory :catalogue do
    show_id { "MyString" }
    genre { "MyString" }
    title { "MyString" }
    director { "MyString" }
    cast { "MyText" }
    country { "MyString" }
    date_added { "2022-07-07 17:28:32" }
    release_year { 1 }
    rating { "MyString" }
    duration { "MyString" }
    listed_in { "MyString" }
    description { "MyText" }
  end
end
