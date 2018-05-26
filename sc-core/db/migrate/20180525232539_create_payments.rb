class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :uuid
      t.string :amount
      t.belongs_to :account
      t.belongs_to :creditcard
      t.belongs_to :subscription
      t.timestamps
    end
  end
end
