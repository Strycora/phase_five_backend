class Best < ApplicationRecord
  validates :name, presence: true
  validates :weight, presence: true
  validates :reps, presence: true

end
