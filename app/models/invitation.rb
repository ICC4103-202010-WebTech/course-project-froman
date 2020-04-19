class Invitation < ApplicationRecord
  belongs_to :event
  belongs_to :user

  has_one :vote, dependent: :destroy
  has_many :comments, dependent: :destroy
end
