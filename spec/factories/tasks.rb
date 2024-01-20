FactoryBot.define do
  factory :task do
    name { "MyString" }
    description { "MyText" }
    priority { 1 }
    deadline { "2024-01-20 18:33:43" }
    status { "MyString" }
    project { nil }
  end
end
