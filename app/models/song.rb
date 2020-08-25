class Song < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: {in: [true, false]}
  validates :release_year, presence: true, if: :released, numericality: { only_integer: true, less_than_or_equal_to: 2020}
  validates :artist_name, presence: true
end
