SkyrimBrewmaster.Router.map ->
	@route 'ingredient', path: '/ingredients'
	@route 'effect', path: '/effects'
	
SkyrimBrewmaster.ApplicationRoute = Ember.Route.extend()

SkyrimBrewmaster.IngredientRoute = Ember.Route.extend
	model: -> SkyrimBrewmaster.Ingredient.find()
	
SkyrimBrewmaster.EffectRoute = Ember.Route.extend
	model: -> SkyrimBrewmaster.Effect.find()