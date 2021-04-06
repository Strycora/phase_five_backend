class Workout < ApplicationRecord
  belongs_to :session

  validates :name, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
  validates :weight, presence: true
end
