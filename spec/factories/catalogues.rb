FactoryBot.define do
  factory :catalogue do
    show_id {"s666"}
    genre { Faker::Book.genre }
    title { Faker::Movie.title }
    director { Faker::Name.name }
    cast { "#{Faker::Name.name}, #{Faker::Name.name}, #{Faker::Name.name}, #{Faker::Name.name}" }
    country { Faker::Address.country }
    date_added { Faker::Date.in_date_period }
    release_year { Faker::Number.number(digits: 4) }
    rating { "TV-MA" }
    duration { "#{Faker::Number.number(digits: 2)} min" }
    listed_in { Faker::Book.genre }
    description { Faker::Lorem.paragraphs }
  end
end
