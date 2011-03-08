class CreateNotki < ActiveRecord::Migration
  def self.up
    create_table :notki do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :notki
  end
end
