class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.text  :description
      t.text  :body
      t.timestamps
    end
    create_table :user_tags do |t|
      t.string :label
      t.timestamps
    end
    create_table :user_tag_snippet do |t|
      t.integer :user_tag_id
      t.integer :snippet_id
    end
  end
end
