class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :email
      t.boolean :closed
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
