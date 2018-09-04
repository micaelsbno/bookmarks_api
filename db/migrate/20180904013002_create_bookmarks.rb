class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.string :folder
      t.text :title
      t.references :user, foreign_key: true
      t.boolean :finished
      t.integer :rating
      t.integer :index

      t.timestamps
    end
  end
end
