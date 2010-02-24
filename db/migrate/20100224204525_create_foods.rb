class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.integer  :user_id
      t.string   :picture_file_name
      t.string   :picture_content_type
      t.integer  :picture_file_size
      t.datetime :picture_update_at
    end
  end
  
  def self.down
    drop_table :foods
  end
end
