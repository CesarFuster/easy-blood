module ApplicationHelper

  def count_users
    User.all.count
  end

  def count_campaign
    Campaign.all.count
  end

end
