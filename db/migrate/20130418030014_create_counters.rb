class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :name
      t.string :url
      t.integer :value
      t.references :site

      t.timestamps
    end
    add_index :counters, :site_id
  end
end
