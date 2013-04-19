class AddTypeToCounter < ActiveRecord::Migration
  def change
    add_column :counters, :type, :string
  end
end
