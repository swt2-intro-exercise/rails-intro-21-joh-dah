class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true, numericality: { only_integer: true }

  scope :written_in, ->(passed_year) { where("year = ?", passed_year) if passed_year.present?}

  has_and_belongs_to_many :authors

end
