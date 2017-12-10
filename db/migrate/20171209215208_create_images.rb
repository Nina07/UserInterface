class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :file_id
      t.references :imageable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
