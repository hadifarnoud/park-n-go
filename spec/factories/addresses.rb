# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    address1 "MyString"
    address2 "MyString"
    address3 "MyString"
    city "MyString"
    county "MyString"
    postcode "MyString"
    country "MyString"
  end
end
