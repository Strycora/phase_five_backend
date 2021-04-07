class Session < ApplicationRecord
  has_many :workouts, :dependent => :delete_all

  validates :name, presence: true
end
