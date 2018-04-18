class Campaign < ApplicationRecord
  belongs_to :institution, optional: true
  has_many :donations
  has_many :users, through: :donations
  belongs_to :cpoint
  # after_create :campaign_mailing

  def self.active
    where('campaigns.start_date <= :today AND campaigns.end_date >= :today', today: Time.zone.now)
  end

  def campaign_mailing
    CampaignMailer.welcome(self).deliver_now
  end
end
