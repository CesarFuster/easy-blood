class CreateCpoints < ActiveRecord::Migration[5.1]
  def change
    create_table :cpoints do |t|
      t.string :address

      t.timestamps
    end
  end
end
