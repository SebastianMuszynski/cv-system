class CreateCustomFieldFeedbacks < ActiveRecord::Migration
  def change
    create_table :custom_field_feedbacks do |t|
      t.text :comment
      t.references :custom_field, index: true

      t.timestamps
    end
  end
end
