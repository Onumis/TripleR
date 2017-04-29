class AddAttachmentImageToContributions < ActiveRecord::Migration
  def self.up
    change_table :contributions do |t|
      t.attachment :image
    end
    remove_column :contributions, :image_url
  end

  def self.down
    remove_attachment :contributions, :image
    add_column :contributions, :image_url, :string
  end
end
