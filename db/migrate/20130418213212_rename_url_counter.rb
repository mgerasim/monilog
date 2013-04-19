class RenameUrlCounter < ActiveRecord::Migration
  def change
	rename_column :counters, :url, :urlquery
  end
end
