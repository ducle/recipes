class AddImageToFood < ActiveRecord::Migration
  def self.up
    change_table :foods do |t|
      t.has_attached_file :image
      t.has_attached_file :site_source
    end
  end

  def self.down
    drop_attached_file :foods, :image
    drop_attached_file :foods, :site_source
  end
end
