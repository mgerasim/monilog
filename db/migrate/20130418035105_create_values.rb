class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.references :counter
      t.integer :value

      t.timestamps
    end
    add_index :values, :counter_id
  end
end
