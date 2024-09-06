class ChangeColumnTaggingFromTag < ActiveRecord::Migration[7.2]
  def change
    remove_column :tags, :tagging, :string
    create_table :tag_names do |t|
      t.string :name

      t.timestamps
    end
    add_reference :tags, :tag_name, foreign_key: { on_table: :tag_names }
  end
end
