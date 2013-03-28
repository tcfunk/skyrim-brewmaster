class CreatePrimaryEffects < ActiveRecord::Migration
  def change
    create_table :primary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
  end
end
