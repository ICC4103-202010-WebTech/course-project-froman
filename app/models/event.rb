class Event < ApplicationRecord
  belongs_to :creator, polymorphic: true
  has_many :invitations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy

  has_one_attached :image

  validates :name, :description, :date, :location, presence: true
  validates :date, not_in_past: true
end
