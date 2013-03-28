class CreateQuaternaryEffects < ActiveRecord::Migration
  def change
    create_table :quaternary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
  end
end
