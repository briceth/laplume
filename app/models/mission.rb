class Mission < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy


  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  # CATEGORIES = ["Biography", "Content Marketing", "Thriller", "Translation", "Romance", "Science-Fiction", "Movie Script", "Academia", "Adult"]
  # validates :category, presence: true, inclusion: { in: CATEGORIES }
  #  STATUS = ["pending", "on-going", "done"]
  # validates :status, presence: true, inclusion: { in: STATUS }
end
