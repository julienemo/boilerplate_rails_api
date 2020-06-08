FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    username { Faker::Name.unique.last_name }
    password { Faker::Config.random.seed }
  end
end
