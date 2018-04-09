class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.references :user, foreign_key: true
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
