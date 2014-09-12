class CreateJoinTableBookTag < ActiveRecord::Migration
  def change
    create_join_table :books, :tags do |t|
      t.index [:book_id, :tag_id]
      t.index [:tag_id, :book_id]
    end
  end
end
