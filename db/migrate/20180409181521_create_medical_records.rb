class CreateMedicalRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_records do |t|
      t.float :weight
      t.float :height
      t.date :birth_date
      t.date :last_donation

      t.timestamps
    end
  end
end
