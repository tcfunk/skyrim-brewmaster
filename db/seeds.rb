require 'csv'
EFFECT_HEADERS = %w[PrimaryEffect SecondaryEffect TertiaryEffect QuaternaryEffect]

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
  ingredient.effect_ids = [1,2,3,4]

  (0..(headers.length - 1)).each do |i|
    if headers[i].in? EFFECT_HEADERS
      ingredient.effect_ids << Effect.find_by_name(vals[i]).id
      puts ingredient.effect_ids.length
    else
      ingredient[headers[i]] = vals[i]
    end
  end
  
  raise ingredient.effect_ids.inspect
  
#   Ingredient.create!(row.to_hash.symbolize_keys)
end