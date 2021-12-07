class Project < ApplicationRecord
  belongs_to :user
  has_many :housings
  validate :title, presence: true
  
end
