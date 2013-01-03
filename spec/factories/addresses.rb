# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    address_id 1
    house_name "MyString"
    address1 "MyString"
    address2 "MyString"
    address3 "MyString"
    county "MyString"
    city "MyString"
    postcode "MyString"
    country "MyString"
  end
end
