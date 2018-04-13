class UsersCampaign

def self.run
  new_hash = self.get_data
  if !new_hash[:users].empty?
    CampaignCreator.run(new_hash)
    new_hash[:users].each do |user|
      CampaignMailer.new_campaign(User.first).deliver_now
    end
  end
end

 def self.get_data
    cpoint_array = []
    user_array = []
    Cpoint.all.each do |cpoint|
      user_array << User.near(cpoint.address, 5) 
      if user_array.length > 4 
        cpoint_array << cpoint
      end
    end
    return {cpoint: cpoint_array, users: user_array}
  end
end