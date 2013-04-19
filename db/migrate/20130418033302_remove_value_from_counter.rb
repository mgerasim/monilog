class RemoveValueFromCounter < ActiveRecord::Migration
  def up
    remove_column :counters, :value
  end

  def down
    add_column :counters, :value, :integer
  end
end
