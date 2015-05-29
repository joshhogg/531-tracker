class CreateOneRepMaxes < ActiveRecord::Migration
  def change
    create_table :one_rep_maxes do |t|
      t.integer :deadlift
      t.integer :squat
      t.integer :benchpress
      t.integer :overheadpress
      t.references :lifter, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :one_rep_maxes, [:lifter_id, :created_at]
  end
end
