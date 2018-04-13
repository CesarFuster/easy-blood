class CampaignCreator
  def self.run(new_hash)
      puts "Campaign created*********************************"
      Campaign.create(
        institution: Institution.all.sample,
        cpoint: new_hash[:cpoint].first,
        location: new_hash[:cpoint].first.address
      )
  end
end
