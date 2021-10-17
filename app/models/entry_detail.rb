class EntryDetail < ApplicationRecord
  belongs_to :entry
  belongs_to :course

  attribute :count ,default: -> { 1 }

  # delegate :price, to: :course
end
