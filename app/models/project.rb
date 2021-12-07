class Project < ApplicationRecord
  belongs_to :user
  has_many :housings
  validates :title, presence: true
  
end
