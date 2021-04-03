class SessionSerializer < ActiveModel::Serializer
  attributes :id, :name, :date

  has_many :workouts
end
