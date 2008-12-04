class CreateSips < ActiveRecord::Migration
  def self.up
    create_table :sips do |t|
      t.column :metsmanifest, :xml, #:null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :sips
  end
end
