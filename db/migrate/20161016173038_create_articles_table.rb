class CreateArticlesTable < ActiveRecord::Migration
  def change
  	create_table :article do |t|
    t.string 	:name
    t.string	:href
    t.string	:description
    t.integer	:subject_id

    t.timestamps null: false
  end
end
