require 'csv'
EFFECT_HEADERS = %w[PrimaryEffect SecondaryEffect TertiaryEffect QuaternaryEffect]

Effect.delete_all
Ingredient.delete_all

csv_text = File.read('db/effects.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  row = row.to_hash.with_indifferent_access
  Effect.create!(row.to_hash.symbolize_keys)
end

csv_text = File.read('db/ingredients.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|

  hash = row.to_hash
  headers = hash.keys.first.split('|')
  vals = hash.values.first.split('|')
    
  ingredient = Ingredient.new
  effects_array = []

  (0..(headers.length - 1)).each do |i|
    if headers[i].in? EFFECT_HEADERS
      effect = Effect.find_by_name(vals[i])
      effects_array << Effect.find_by_name(vals[i]).id unless effect.nil?
    else
      ingredient[headers[i]] = vals[i]
    end
  end
  
  ingredient.effect_ids = effects_array
  ingredient.save!
end