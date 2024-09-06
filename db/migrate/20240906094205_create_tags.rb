class CreateTags < ActiveRecord::Migration[7.2]
  def change
    create_table :tags do |t|
      t.string :tagging
      t.references :taggable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
