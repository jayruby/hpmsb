class AddAttachmentAvatarToAlumnis < ActiveRecord::Migration
  def self.up
    change_table :alumnis do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :alumnis, :avatar
  end
end
