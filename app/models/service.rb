class Service < ApplicationRecord
  has_many :prestations, dependent: :destroy
  has_one_attached :photo
  belongs_to :user
  validates :name, presence: true, uniqueness: true
end
