class RenameValueField < ActiveRecord::Migration
  def change
    rename_column :values, :value, :response
  end
end
