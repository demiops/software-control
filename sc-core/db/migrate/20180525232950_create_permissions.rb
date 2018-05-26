class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.string :uuid
      t.string :perm
      t.string :resource

      t.timestamps
    end
  end
end
