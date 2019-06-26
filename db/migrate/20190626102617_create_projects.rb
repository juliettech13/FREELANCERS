class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :category
      t.integer :max_members
      t.datetime :due_date
      t.datetime :start_date
      t.integer :budget
      t.string :stage
      t.string :name
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
