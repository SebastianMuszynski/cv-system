class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :status
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number
      t.string :personal_profile
      t.string :education
      t.string :technical_skills
      t.string :project_work
      t.string :professional_experience
      t.string :interests_and_achievements
      t.string :references
      t.references :user, index: true
      t.references :job, index: true
      t.references :feedback, index: true

      t.timestamps
    end
  end
end
