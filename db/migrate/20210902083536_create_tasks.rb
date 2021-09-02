class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title,null:false
      t.datetime :deadline_at,null:false
      t.text :detail,null:false
      t.references :lesson, foreign_key: true
      t.timestamps
    end
  end
end
