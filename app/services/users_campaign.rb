 class UsersCampaign

# metodo de classe que ira rodar o campanha e o mailing de campanha depois que o usuario cadastrar
  def self.run
    new_hash = self.get_data
    if !new_hash.nil?
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
      if User.near(cpoint.address, 2).length > 0
        
        User.near(cpoint.address, 2).each do |user| #itera todos os usuarios a cada Cpoint se estao ao redor de 5km
          # byebug
          user_array << user
          # byebug
        end
        
        if user_array.count > 1 #numero de pessoas que ao redor do Cpoint --- for testing = 0
            cpoint_array << cpoint
            byebug
        end
      end
    end
    if !cpoint_array.empty?
      return {cpoint: cpoint_array, users: user_array}
    end
  end
end
