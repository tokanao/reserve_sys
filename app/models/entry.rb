class Entry < ApplicationRecord
  belongs_to :customer
  belongs_to :resource
  has_many :entry_details

  accepts_nested_attributes_for :entry_details, reject_if: :all_blank, allow_destroy: true

  validates :start_time, presence: true
  validate :duplicate_check
  validate :end_more_than_start

  attribute :start_time, default: -> { sys_date }
  attribute :end_time, default: -> { sys_date.since(1.days) }
  attribute :term, default: -> { 1 }
  attribute :status, default: -> { :reservation }

  enumerize :status, in: {
    reservation:  '1',
    accepting:    '2',
    cancel:       '3'
  }

  def duplicate_check
    if System.first.entry_unit.day?
      unless Entry.where(start_time: start_time).where.not(customer: customer).where(resource: resource).blank?
        errors[:base] << "既に予約されています"
      end
    end
  end

  def end_more_than_start
    if start_time > end_time
      errors.add(:start_time, '開始日は終了日より前に設定してください')
    end
  end
end
