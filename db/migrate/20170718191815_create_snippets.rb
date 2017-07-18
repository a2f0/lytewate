class CreateSnippets < ActiveRecord::Migration[5.1]
  def change
    create_table :snippets do |t|
      t.text  :description
      t.text  :body
      t.timestamps
    end
  end
end
