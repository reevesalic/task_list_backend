class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :description
      t.string :category_id
      t.boolean :complete
      t.timestamps
    end
  end
end
