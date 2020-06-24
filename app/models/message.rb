class Message < ApplicationRecord
  belongs_to :user

  validates :receptor, :content, :date, presence: true

end
