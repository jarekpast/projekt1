class StworzNotke < ActiveRecord::Migration
  def self.up
    create_table "notki" do |t|
      t.column "tytul", :string 
      t.column "tresc", :text 
     end 
  end

  def self.down
   drop_table "notki" 
  end
end
