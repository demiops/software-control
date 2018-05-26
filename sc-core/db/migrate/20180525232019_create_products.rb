class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :uuid
      t.string :type
      t.text :properties
      t.string :name
      t.belongs_to :account
      t.belongs_to :cloud_id
      t.timestamps
    end
  end
end
