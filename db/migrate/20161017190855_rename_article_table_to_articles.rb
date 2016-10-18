class RenameArticleTableToArticles < ActiveRecord::Migration
  def change
  	rename_table	:article, :articles 
  end
end
