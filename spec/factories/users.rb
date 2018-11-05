FactoryGirl.define do
  factory :user do
    # n is going to be increased by one each new user.
    sequence(:name) { |n| "test#{n}"}
    sequence(:email) { |n| "test#{n}@test.com"}
    password '123456'
    password_confirmation '123456'
  end
end