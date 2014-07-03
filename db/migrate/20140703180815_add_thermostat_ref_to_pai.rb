class AddThermostatRefToPai < ActiveRecord::Migration
  def change
    add_reference :pais, :thermostat, index: true
  end
end
