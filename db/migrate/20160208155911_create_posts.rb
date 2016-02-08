class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps null: false

      add_index :posts, [:user_id, :created_at]
    end
  end
end
