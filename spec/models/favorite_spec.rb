require 'rails_helper'

describe Favorite do
  it 'allows a user to favorite a puppy' do
    user = create_user
    puppy = create_puppy
    favorite = user.favorites.new(puppy_id: puppy.id)
    expect(favorite).to be_valid
  end

  it 'does not allow a puppy to be favorited w/out a user' do
    puppy = create_puppy
    favorite = Favorite.new(user_id: nil, puppy_id: puppy.id)
    expect(favorite).to_not be_valid
  end

  it 'does not allow a puppy to be favorited w/out a user' do
    user = create_user
    favorite = Favorite.new(user_id: user.id, puppy_id: nil)
    expect(favorite).to_not be_valid
  end

end