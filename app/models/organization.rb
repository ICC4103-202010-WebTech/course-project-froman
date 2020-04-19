class Organization < ApplicationRecord
  has_many :organization_roles, dependent: :destroy
  has_many :users, through: :organization_roles
  has_many :events, as: :creator, dependent: :destroy

  validates :name, uniqueness: true
end
