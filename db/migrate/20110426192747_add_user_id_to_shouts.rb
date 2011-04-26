class AddUserIdToShouts < ActiveRecord::Migration
  def self.up
  	add_column :shouts, :user_id, :integer
  end

  def self.down
  	remove_column :shouts, :user_id
  end
end
