class CreateApikeys < ActiveRecord::Migration[5.1]
  def change
    create_table :apikeys do |t|
      t.string :key
      t.string :secret
      t.string :uuid
      t.belongs_to :account
      t.belongs_to :role
      t.timestamps
    end
  end
end
