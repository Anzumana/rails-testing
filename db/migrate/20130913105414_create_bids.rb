class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.text :paragraph
      t.integer :idnumber
      t.boolean :p1
      t.boolean :p2
      t.boolean :p3
      t.boolean :p4
      t.boolean :p5

      t.timestamps
    end
  end
end
