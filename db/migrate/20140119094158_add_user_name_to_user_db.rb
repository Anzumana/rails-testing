class AddUserNameToUserDb < ActiveRecord::Migration
  def change
    add_column :user_dbs, :userName, :string
  end
end
