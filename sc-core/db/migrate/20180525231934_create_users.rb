class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :uuid
      t.belongs_to :account
      t.belongs_to :role
      t.timestamps
    end
  end
end
