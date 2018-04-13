class Campaign < ApplicationRecord
  belongs_to :institution, optional: true
  has_many :users, through: :donations
  belongs_to :cpoint
  # after_create :campaign_mailing


  def campaign_mailing
    CampaignMailer.welcome(self).deliver_now
  end
end
