class CreateCoastPoints < ActiveRecord::Migration
  def self.up
    create_table :coast_points, :force => true do |t|
      t.column :coast_id, :int
      t.column :lat, :float
      t.column :lng, :float
    end
  end

  def self.down
    drop_table :coast_points
  end
end
