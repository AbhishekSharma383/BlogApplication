class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.string :status
      t.datetime :creation_date
      t.datetime :published_date
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
