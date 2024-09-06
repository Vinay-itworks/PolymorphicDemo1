class CreateShorts < ActiveRecord::Migration[7.2]
  def change
    create_table :shorts do |t|
      t.string :file
      t.time :timing

      t.timestamps
    end
  end
end
