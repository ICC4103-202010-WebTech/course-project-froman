class OrganizationRole < ApplicationRecord
  belongs_to :organization
  belongs_to :user
end
