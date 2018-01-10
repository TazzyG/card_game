class CreateEnergyLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :energy_levels do |t|
      t.string :mood_type
      t.integer :rating
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
