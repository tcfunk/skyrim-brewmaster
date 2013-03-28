class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :code
      t.integer :primary_effect_id
      t.integer :secondary_effect_id
      t.integer :tertiary_effect_id
      t.integer :quaternary_effect_id
      t.decimal :weight
      t.integer :value, :precision => 10, :scale => 2
      t.string :version

      t.timestamps
    end
  end
end
