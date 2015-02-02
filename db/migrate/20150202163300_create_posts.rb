class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.belongs_to :category, index: true
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :posts, :categories
  end
end
