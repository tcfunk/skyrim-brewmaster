class Effect < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  attr_accessible :effect, :magnitude, :name, :skyrim_code, :value
end
