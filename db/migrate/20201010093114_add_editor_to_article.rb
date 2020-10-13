class AddEditorToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :editor, :string
  end
end
