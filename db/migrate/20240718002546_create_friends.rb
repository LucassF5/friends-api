class CreateFriends < ActiveRecord::Migration[7.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
