class AddAttachmentAvatarToBoots < ActiveRecord::Migration
  def self.up
    change_table :boots do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :boots, :avatar
  end
end
