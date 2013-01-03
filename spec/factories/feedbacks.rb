# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feedback do
    feedback_id 1
    comment "MyString"
    raiting 1
  end
end
