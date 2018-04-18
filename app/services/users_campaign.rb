 class UsersCampaign

# metodo de classe que ira rodar o campanha e o mailing de campanha depois que o usuario cadastrar
def self.run
  new_hash = self.get_data
  if !new_hash[:users].empty?
    campaign = CampaignCreator.run(new_hash)
    new_hash[:users].each do |user|
      CampaignMailer.new_campaign(user.id, campaign).deliver_later
    end
  end
end



 def self.get_data
    cpoint_array = []
    user_array = []
    Cpoint.all.each do |cpoint|
      if User.near(cpoint.address, 5).length > 0
          User.near(cpoint.address, 5).each do |user| #itera todos os usuarios a cada Cpoint se estao ao redor de 5km
          user_array << user
          if user_array.length > 0 #numero de pessoas que ao redor do Cpoint --- for testing = 0
            cpoint_array << cpoint
      else
        user_array = []
          end
        end
      end
    end
    return {cpoint: cpoint_array, users: user_array}
  end
end
