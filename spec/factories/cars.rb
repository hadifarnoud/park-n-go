# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    car_id 1
    user_id 1
    car_make "MyString"
    car_model "MyString"
    car_colour "MyString"
    car_year 1
    car_milage 1
    car_picture "MyString"
    car_last_state_report "2013-01-02"
  end
end
