class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :jobID
      t.string :rep
      t.string :name
      t.string :buyer
      t.string :booked
      t.string :date
      t.string :invoice
      t.string :shipped
      t.string :margin
      t.string :commissions
      t.string :paid

      t.timestamps
    end
  end

  def self.down
     begin drop_table :jobs rescue true end
  end
end
