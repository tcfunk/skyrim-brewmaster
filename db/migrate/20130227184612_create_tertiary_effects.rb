class CreateTertiaryEffects < ActiveRecord::Migration
  def change
    create_table :tertiary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
  end
end
