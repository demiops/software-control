class CreateClouds < ActiveRecord::Migration[5.1]
  def change
    create_table :clouds do |t|
      t.string :endpoint
      t.text :properties
      t.string :uuid

      t.timestamps
    end
  end
end
