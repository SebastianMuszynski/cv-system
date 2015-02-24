class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :personal_statement
      t.string :skills
      t.string :qualifications
      t.string :references
      t.boolean :with_photo
      t.string :experience
      t.references :user, index: true
      t.references :job, index: true

      t.timestamps
    end
  end
end
