class DropLandlordsTable < ActiveRecord::Migration[5.0]
  def up
      drop_table :landlords
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
