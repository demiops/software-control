class CreateAuthmethods < ActiveRecord::Migration[5.1]
  def change
    create_table :authmethods do |t|
      t.string :uuid
      t.string :endpoint
      t.text :properties

      t.timestamps
    end
  end
end
