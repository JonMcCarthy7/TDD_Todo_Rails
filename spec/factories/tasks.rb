FactoryBot.define do
  factory :task do
    name { "MyString" }
    priority { 1 }
    completed { false }
  end
end
