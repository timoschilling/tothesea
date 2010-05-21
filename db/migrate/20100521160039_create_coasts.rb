class CreateCoasts < ActiveRecord::Migration
  def self.up
    create_table :coasts, :force => true do |t|
      t.column :name, :string
      t.column :country, :string
    end
  end

  def self.down
    drop_table :coasts
  end
end
