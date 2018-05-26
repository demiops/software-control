class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :uuid
      t.string :type
      t.text :description
      t.belongs_to :account
      t.timestamps
    end
  end
end
