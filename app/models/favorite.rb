class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :puppy

  validates :puppy_id, presence: true
  validates :user_id, presence: true
end