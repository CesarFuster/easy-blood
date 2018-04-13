class AddCpointRefToCampaigns < ActiveRecord::Migration[5.1]
  def change
    add_reference :campaigns, :cpoint, foreign_key: true
  end
end
