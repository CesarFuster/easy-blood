class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.date :start_date
      t.date :end_date
      t.string :location
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
