class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :start
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
