class CreateVideos < ActiveRecord::Migration[7.2]
  def change
    create_table :videos do |t|
      t.string :file
      t.time :timing

      t.timestamps
    end
  end
end
