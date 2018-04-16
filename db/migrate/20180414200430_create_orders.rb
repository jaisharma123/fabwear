class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
