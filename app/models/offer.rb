class Offer < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :mission

  validates :status, presence: true, inclusion: { in: ["pending", "on-going", "done"] }
end
