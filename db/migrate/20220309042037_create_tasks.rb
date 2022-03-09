class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :status
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end
  end
end
