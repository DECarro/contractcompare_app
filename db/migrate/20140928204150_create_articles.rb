class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    t.string :title
    t.string :excerpt
    t.text :content
    t.integer :category_id
    t.integer :user_id


      t.timestamps
    end
  end
end
