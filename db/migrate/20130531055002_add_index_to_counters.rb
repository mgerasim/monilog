class AddIndexToCounters < ActiveRecord::Migration
  def change
    add_column :counters, :position, :integer, :default => 1
  end
end
