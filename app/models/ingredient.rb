class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many :effects
  attr_accessible :code, :name, :value, :version, :weight, :effect_ids, :description
end
