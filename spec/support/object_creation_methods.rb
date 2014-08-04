def create_user(overrides = {})
  User.create!({
    name: 'Some User',
    email: 'user@example.com',
    password: 'password',
    password_confirmation: 'password'
  }.merge(overrides))
  end

def create_puppy(overrides = {})
  Puppy.create!({
    image: 'http://imgur.com/r6OBF6k.jpg'
  }.merge(overrides))
end