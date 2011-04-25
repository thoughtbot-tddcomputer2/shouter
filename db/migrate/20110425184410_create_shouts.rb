class CreateShouts < ActiveRecord::Migration
  def self.up
    create_table :shouts do |t|
      t.string :body, :limit => 140, :default => "", :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :shouts
  end
end
