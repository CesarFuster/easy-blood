module CampaignCreator
  CAMPAIGN_RANGE = 3

  def self.perform(cpoint, campaign_limit)
    # queue_as :mailer
    return unless !cpoint.nil?
    users = User.near(cpoint.address, CAMPAIGN_RANGE)
    return unless users.length > campaign_limit
    return unless cpoint.campaigns.active.empty?
    puts "campaign created ********************************"
    campaign = cpoint.campaigns.build(
      start_date: (Time.zone.now ),
      end_date: (Time.zone.now + 90000),
      location: cpoint.address,
      users: users,
      institution: Institution.all.sample
    )
    campaign.save!
      users.each do |user|
       CampaignMailer.new_campaign(user.id, campaign).deliver_later
     end
  end

  # def self.cpoint_for_user(user)
  #   Cpoint.near(user.address, CAMPAIGN_RANGE).first
  # end
end