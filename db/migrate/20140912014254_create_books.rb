class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :price
      t.date :published_at
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
