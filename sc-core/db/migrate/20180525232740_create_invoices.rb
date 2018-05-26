class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :uuid
      t.belongs_to :account
      t.belongs_to :subscription
      t.belongs_to :payment
      t.timestamps
    end
  end
end
