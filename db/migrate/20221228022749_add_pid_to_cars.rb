class AddPidToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :p_id, :integer
  end
end
