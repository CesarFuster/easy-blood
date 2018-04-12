class CampaignCreator
  def self.run
    puts "Campaign created*********************************"
    Campaign.create(institution: Institution.all.sample, cpoint: self.generate.first, location: self.generate.first.address) if self.generate.length > 0
  end

  def self.generate
    array = []
    Cpoint.all.each do |cpoint|
      array << cpoint if User.near(cpoint.address, 5).length > 1
    end
    return array
  end
end