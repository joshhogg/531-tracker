class CreateLifters < ActiveRecord::Migration
  def change
    create_table :lifters do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
