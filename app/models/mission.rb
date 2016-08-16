class Mission < ApplicationRecord
  belongs_to :user
  has_many :offers
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  CATEGORIES = ["Biography", "Content Marketing", "Thriller", "Translation", "Romance", "Science-Fiction", "Movie Script", "Academia", "Adult"]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  STATUS = ["pending", "on-going", "done"]
  validates :statuts, presence: true, inclusion: { in: STATUS }, length: { minimum: 40, too_short: "%{count} characters is the minimum allowed" }
end
