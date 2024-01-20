class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.datetime :deadline
      t.string :status
      t.references :project, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
