class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.text :content
      t.datetime :publish_at

      t.timestamps null: false
    end
  end
end
