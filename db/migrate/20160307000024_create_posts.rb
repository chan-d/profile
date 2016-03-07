class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.date :date
      t.string :title
      t.text :post
      t.references :user

      t.timestamps null: false
    end
  end
end
