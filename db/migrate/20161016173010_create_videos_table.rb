class CreateVideosTable < ActiveRecord::Migration
  def change
  	create_table :videos do |t|
    t.string 	:name
    t.string	:href
    t.string	:description
    t.integer	:subject_id

    t.timestamps null: false
  	end
	end
end 