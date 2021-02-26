class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :balance

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
