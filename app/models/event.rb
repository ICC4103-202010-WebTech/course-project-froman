class Event < ApplicationRecord
  belongs_to :creator, polymorphic: true
  has_many :invitations, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
end
