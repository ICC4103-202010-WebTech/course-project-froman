class Message < ApplicationRecord
  belongs_to :user

  validates :transmitter, :content, :date, presence: true

end
