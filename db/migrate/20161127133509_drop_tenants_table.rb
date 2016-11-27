class DropTenantsTable < ActiveRecord::Migration[5.0]
  def up
      drop_table :tenants
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
