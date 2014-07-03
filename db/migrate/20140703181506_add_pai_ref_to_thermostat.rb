class AddPaiRefToThermostat < ActiveRecord::Migration
  def change
    add_reference :thermostats, :pai, index: true
  end
end
