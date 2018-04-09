class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :address
      t.string :email_resp
      t.string :name_resp
      t.string :phone_number_resp

      t.timestamps
    end
  end
end
