FactoryGirl.define do
  factory :user do
    name 'Some User'
    email 'user@example.com'
    password 'password'
    password_confirmation 'password'
  end
end

FactoryGirl.define do
  factory :puppy do
    image 'http://imgur.com/r6OBF6k.jpg'
  end
end