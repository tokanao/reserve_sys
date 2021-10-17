class Customer < ApplicationRecord
  include CustomerDecorator

  has_many :entry

  enumerize :gender, in: {
    male:     1,
    female:   2,
    other:    3
  }

  enumerize :status, in: {
    initial: 0,
    member: 1,
    cancel: 2
  }

  def full_name
    "#{last_name} #{first_name}"
  end

  def full_tell
    "#{tel1}-#{tel2}-#{tel3}"
  end

  def full_zip
    "#{zip1}-#{zip2}"
  end

  def full_address
    "#{addr1} #{addr2} #{addr3}"
  end
end
