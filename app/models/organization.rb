class Organization < ApplicationRecord
  has_many :organization_roles, dependent: :destroy
  has_many :users, through: :organization_roles
  has_many :events, as: :creator, dependent: :destroy

  has_one_attached :org_image

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
