class AddUserAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_avatar, :string
  end
end
