class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
