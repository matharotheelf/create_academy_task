class CreateVideos < ActiveRecord::Migration[8.1]
  def change
    create_table :videos do |t|
      t.string :provider_id

      t.timestamps
    end
  end
end
