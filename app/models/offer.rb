class Offer < ApplicationRecord
  has_many :messages
  belongs_to :user
  belongs_to :mission

  validates :status, presence: true, inclusion: { in: ["pending", "on-going", "done"] }
end
