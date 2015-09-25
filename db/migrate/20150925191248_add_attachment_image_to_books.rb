class AddAttachmentImageToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      remove_column "books", "cover_url"
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :books, :image
    add_column "books", "cover_url", :string, after: "published_on"
  end
end
