class Housing < ApplicationRecord
  belongs_to :project
  has_many :users, through: :project
  validates :price, presence: true, length: { minimum: 20000 }
  validate :property_category, presence: true
  validate :localization, presence: true
end
