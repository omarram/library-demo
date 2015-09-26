class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.text :description
      t.string :publisher
      t.date :published_on
      t.string :cover_url

      t.timestamps null: false
    end
  end
end
