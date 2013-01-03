# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    price_id 1
    price_amount "9.99"
    price_currency "MyString"
  end
end
