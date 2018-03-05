class AddLatitudeAndLongitudeToForecast < ActiveRecord::Migration[5.1]
  def change
    add_column :forecasts, :latitude, :float
    add_column :forecasts, :longitude, :float
  end
end
