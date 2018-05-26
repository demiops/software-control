class CreateCloudcredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :cloudcredentials do |t|
      t.string :uuid
      t.text :properties
      t.belongs_to :cloud
      t.belongs_to :account
      t.timestamps
    end
  end
end
