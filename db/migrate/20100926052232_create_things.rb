class CreateThings < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.string :what
      t.string :another

      t.timestamps
    end
  end

  def self.down
    drop_table :things
  end
end
