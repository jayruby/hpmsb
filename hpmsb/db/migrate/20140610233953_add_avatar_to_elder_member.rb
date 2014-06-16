class AddAvatarToElderMember < ActiveRecord::Migration
  def change
    add_column :elder_members, :avatar, :string
  end
end
