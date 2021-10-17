class Course < ApplicationRecord
  has_many :entry_details

  validates :price, presence: true
end
