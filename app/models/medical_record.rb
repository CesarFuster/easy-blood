class MedicalRecord < ApplicationRecord
  belongs_to :user
  validates :weight, presence: true
  validates :height, presence: true
  validates :birth_date, presence: true
end
