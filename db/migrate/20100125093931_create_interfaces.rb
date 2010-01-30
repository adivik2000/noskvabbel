class CreateInterfaces < ActiveRecord::Migration
  def self.up
    create_table :interfaces do |t|
      t.string :mail
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :interfaces
  end
end
