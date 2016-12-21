class Tournament < ActiveRecord::Base
  has_many :teams

  validates :name, presence: true
  validates :event_date, presence: true
  validates :place, presence: true
  validates :athletic_event, presence: true
  validates :deadline, presence: true
end
