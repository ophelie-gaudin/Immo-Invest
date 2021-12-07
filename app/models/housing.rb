class Housing < ApplicationRecord
  belongs_to :project
  has_many :users, through: :project
  validates :price, presence: true, length: { minimum: 20000 }
  validates :property_category, presence: true
  validates :localization, presence: true
end
