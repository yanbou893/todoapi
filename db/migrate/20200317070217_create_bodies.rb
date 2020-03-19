class CreateBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :bodies do |t|
      t.integer :task_id
      t.string :title
      t.integer :parcent
      t.string :memo

      t.timestamps
    end
  end
end
