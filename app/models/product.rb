class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :usa, -> { where(country_of_origin: "USA") }
end
