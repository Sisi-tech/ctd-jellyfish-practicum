class CreateFriendships < ActiveRecord::Migration[8.0]
  def change
    create_table :friendships do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :friend_id
      t.string :status

      t.timestamps
    end
  end
end
