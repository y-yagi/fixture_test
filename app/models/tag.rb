class Tag < ActiveRecord::Base
  has_and_belongs_to_many :books

  validates :name, length: { in: 1..64 }
end
