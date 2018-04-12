class Campaign < ApplicationRecord
  belongs_to :institution, optional: true
  has_many :users, through: :donations
  belongs_to :cpoint
end
