class EffectsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Effect.all
  end
end
