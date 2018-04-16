class CampaignCreator
  #cria campanha depois se o check do contador de pessoas ao redor do cpoint for true
  def self.run(new_hash)
      puts "Campaign created  *********************************"
      campaign = Campaign.create(
        institution: Institution.all.sample,
        cpoint: new_hash[:cpoint].first,
        location: new_hash[:cpoint].first.address,
        start_date: (Date.today),
        end_date: (Date.today + 1)
      )
      campaign
  end
end
