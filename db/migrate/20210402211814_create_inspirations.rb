class CreateInspirations < ActiveRecord::Migration[6.1]
  def change
    create_table :inspirations do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
