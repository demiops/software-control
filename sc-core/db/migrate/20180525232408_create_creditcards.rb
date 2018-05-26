class CreateCreditcards < ActiveRecord::Migration[5.1]
  def change
    create_table :creditcards do |t|
      t.string :uuid
      t.string :ccnumber
      t.integer :cvn
      t.string :address
      t.string :name
      t.string :exp
      t.belongs_to :account
      t.timestamps
    end
  end
end
