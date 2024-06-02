FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { '1234567' }
  end
end
