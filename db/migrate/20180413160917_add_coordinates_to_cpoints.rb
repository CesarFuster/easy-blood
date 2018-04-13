class AddCoordinatesToCpoints < ActiveRecord::Migration[5.1]
  def change
    add_column :cpoints, :latitude, :float
    add_column :cpoints, :longitude, :float
  end
end
