class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :status
      t.string :personal_details
      t.string :personal_profile
      t.string :education
      t.string :technical_skills
      t.string :project_work
      t.string :professional_experience
      t.string :interests_and_achievements
      t.string :references
      t.string :other_comments
      t.references :staff_member, index: true
      t.references :cv, index: true
      t.timestamps
    end
  end
end
