class AddPublishedOnArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :published, :date
  end
end
