# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    service_id 1
    service_name "MyString"
    price_id 1
  end
end
