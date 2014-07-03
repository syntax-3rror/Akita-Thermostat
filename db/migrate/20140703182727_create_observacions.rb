class CreateObservacions < ActiveRecord::Migration
  def change
    create_table :observacions do |t|
      t.text :observacion
      t.references :thermostat, index: true

      t.timestamps
    end
  end
end
