class ExecuteUpdateCounters < ActiveRecord::Migration
  def up
    execute("UPDATE counters SET position = 1")
  end

  def down
  end
end
