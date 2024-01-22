FactoryBot.define do
  factory :user do
    name { "Jane Doe" }
    email { "jane.doe@example.com" }
    password_digest { "MyString" }
    password_confirmation { "MyString" }
  end
end
