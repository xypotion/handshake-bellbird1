class Alarm < ApplicationRecord
  has_many :upvotes
  validates :message, length: { maximum: 200}, presence: true
end
