class Vote < ApplicationRecord
  belongs_to :event
  belongs_to :invitation
end
