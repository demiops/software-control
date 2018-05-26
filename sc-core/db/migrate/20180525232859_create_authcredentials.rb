class CreateAuthcredentials < ActiveRecord::Migration[5.1]
  def change
    create_table :authcredentials do |t|
      t.string :uuid
      t.text :properties
      t.belongs_to :user
      t.belongs_to :authmethod
      t.timestamps
    end
  end
end
