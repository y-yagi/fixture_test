class Author < ActiveRecord::Base
  has_many :book

  validates :name, length: { in: 1..128 }
end
