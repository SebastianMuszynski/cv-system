class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :logo
      t.date :deadline
      t.string :category
      t.decimal :salary, precision: 8, scale: 2

      t.timestamps
    end
  end
end
