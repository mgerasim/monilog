class RenameCountersTypeNokogirisearch < ActiveRecord::Migration
  def change
    rename_column :counters, :type, :nokogirisearch
  end
end
