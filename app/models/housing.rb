class Housing < ApplicationRecord
  belongs_to :project
  has_one :user, through: :project
  has_many_attached :pictures 

  validates :ad_price, presence: true
  validates :property_category, presence: true
  validates :localization, presence: true
end
