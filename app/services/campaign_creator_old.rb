class CampaignCreatorOld
  #cria campanha depois se o check do contador de pessoas ao redor do cpoint for true
  def self.run(new_hash)
    if Campaign.count == 0
      campaign = Campaign.new(
          institution: Institution.all.sample,
          cpoint: new_hash[:cpoint].first,
          location: new_hash[:cpoint].first.address,
          start_date: (Date.today),
          end_date: (Date.today + 1)
        )
        new_hash[:users].each do |user|
          campaign.users << user
        end
        campaign.save!
      puts "Campaign1 created  *********************************"
    else
      puts "else"
      new_array = []
      Campaign.all.each do |camp|
        new_array << camp
      end
      new_array.each do |c|
        puts "end ********"
        if c.cpoint != new_hash[:cpoint]
          # byebug
          campaign = Campaign.new(
            institution: Institution.all.sample,
            cpoint: new_hash[:cpoint].first,
            location: new_hash[:cpoint].first.address,
            start_date: (Date.today),
            end_date: (Date.today + 1)
          )
          # new_hash[:users].each do |user|
          #   campaign.users << user
            # byebug
            campaign.save!
          puts "Campaign other created  *********************************"
          # end
        end
    end
    campaign
  end
end
