class Book < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :tags

  validates :name, length: { in: 1..256 }
end
