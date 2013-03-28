class RemoveUnusedTablesAndReferenceIds < ActiveRecord::Migration
  def up
    drop_table :primary_effects
    drop_table :quaternary_effects
    drop_table :secondary_effects
    drop_table :tertiary_effects
    
    remove_column :ingredients, :primary_effect_id
    remove_column :ingredients, :quaternary_effect_id
    remove_column :ingredients, :secondary_effect_id
    remove_column :ingredients, :tertiary_effect_id
  end

  def down
    create_table :primary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
    create_table :quaternary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
    create_table :tertiary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
    create_table :secondary_effects do |t|
      t.string :effect_id

      t.timestamps
    end
    add_column :ingredients, :primary_effect_id, :integer
    add_column :ingredients, :quaternary_effect_id, :integer
    add_column :ingredients, :secondary_effect_id, :integer
    add_column :ingredients, :tertiary_effect_id, :integer
  end
end
