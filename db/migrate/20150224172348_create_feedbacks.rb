class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :status
      t.string :personal_details
      t.string :personal_statement
      t.string :skills
      t.string :qualifications
      t.string :references
      t.string :experience
      t.string :other_comments
      t.references :staff_member, index: true
      t.references :cv, index: true

      t.timestamps
    end
  end
end
