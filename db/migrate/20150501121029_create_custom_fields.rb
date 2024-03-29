class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :name
      t.text :content
      t.references :cv, index: true

      t.timestamps
    end
  end
end
