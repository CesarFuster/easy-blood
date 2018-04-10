class AddUserToMedicalRecords < ActiveRecord::Migration[5.1]
  def change
    add_reference :medical_records, :user, foreign_key: true
  end
end
