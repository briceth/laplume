  class Experience < ApplicationRecord
  belongs_to :user

  validates :category, presence: true
  validates :title, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates :description, presence: true, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
  validates :organization, presence: true
end
