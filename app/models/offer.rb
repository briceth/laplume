class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  validates :status, presence: true, inclusion: { in: ["pending", "on-going", "done"] }
end
