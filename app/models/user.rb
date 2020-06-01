class User < ApplicationRecord
  has_many :events, as: :creator, dependent: :destroy
  has_many :organization_roles, dependent: :destroy
  has_many :organizations, through: :organization_roles

  has_many :invitations, dependent: :destroy

  has_one_attached :profile_image

  validates :username, :email, uniqueness: true
  validates :email, format:
      { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
