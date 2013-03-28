class CreateEffects < ActiveRecord::Migration
  def change
    create_table :effects do |t|
      t.string :name
      t.string :skyrim_code
      t.string :effect
      t.integer :magnitude
      t.integer :value

      t.timestamps
    end
  end
end
