module CampaignCreator
  CAMPAIGN_RANGE = 3

  def self.perform(cpoint, campaign_limit)
    return unless User.near(cpoint.address, CAMPAIGN_RANGE).length >= campaign_limit
    campaign = cpoint.campaigns.build(
      start_date: (Time.zone.today + 5),
      end_date: (Time.zone.today + 10),
      location: cpoint.address
    )
    campaign.save!
  end
end