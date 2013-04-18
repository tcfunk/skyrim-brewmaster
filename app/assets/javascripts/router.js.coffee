SkyrimBrewmaster.Router.map ->
	@route 'ingredients', path: '/ingredients'
	@route 'effects', path: '/effects'
	
SkyrimBrewmaster.ApplicationRoute = Ember.Route.extend()

SkyrimBrewmaster.IngredientsRoute = Ember.Route.extend
	model: -> SkyrimBrewmaster.Ingredient.find()
	
SkyrimBrewmaster.EffectsRoute = Ember.Route.extend
	model: -> SkyrimBrewmaster.Effect.find()