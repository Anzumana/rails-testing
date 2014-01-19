class AddP6ToBid < ActiveRecord::Migration
  def change
    add_column :bids, :p6, :boolean
  end
end
