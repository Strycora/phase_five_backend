class CreateBests < ActiveRecord::Migration[6.1]
  def change
    create_table :bests do |t|
      t.string :name
      t.integer :weight
      t.integer :reps

      t.timestamps
    end
  end
end
