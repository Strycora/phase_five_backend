class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :sets, :reps, :weight, :session_id
end
