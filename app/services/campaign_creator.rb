class CampaignCreator
  def self.run(new_hash)
      puts "Campaign created*********************************"
      Campaign.create(
        institution: Institution.all.sample,
        cpoint: new_hash[:cpoint].first,
        location: new_hash[:cpoint].first.address,
        start_date: (Date.today),
        end_date: (Date.today + 1)
      )
  end
end
