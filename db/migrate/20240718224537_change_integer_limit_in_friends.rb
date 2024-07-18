class ChangeIntegerLimitInFriends < ActiveRecord::Migration[7.1]
  def change
    change_column :friends, :phone, :integer, limit: 8
  end
end 
