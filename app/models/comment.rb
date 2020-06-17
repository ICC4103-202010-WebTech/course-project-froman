class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :invitation

  validates :content, presence: true
end
