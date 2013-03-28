class CreateSecondaryEffects < ActiveRecord::Migration
  def change
    create_table :secondary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
  end
end
