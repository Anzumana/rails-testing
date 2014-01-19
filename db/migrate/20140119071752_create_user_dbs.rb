class CreateUserDbs < ActiveRecord::Migration
  def change
    create_table :user_dbs do |t|
      t.integer :idnumber
      t.boolean :p1
      t.boolean :p2
      t.boolean :p3
      t.boolean :p4
      t.boolean :p5
      t.boolean :p6
			t.text :paragraph

      t.timestamps
    end
  end
end
