class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name, null:false
      t.integer :weekday, null:false, default: 0
      t.timestamps
    end
  end
end
