class AddUrldomainToSite < ActiveRecord::Migration
  def change
    add_column :sites, :urldomain, :string
  end
end
