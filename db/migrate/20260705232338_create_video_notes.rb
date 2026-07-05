class CreateVideoNotes < ActiveRecord::Migration[8.1]
  def change
    create_table :video_notes do |t|
      t.text :content
      t.integer :timestamp
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
