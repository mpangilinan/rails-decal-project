class PokemonsController < ApplicationController

	def capture

		# grab id of pokemon from parameters
		@pokemon = Pokemon.find params[:id]

		#set the trainer to be the current trainer
		@pokemon.trainer = current_trainer

		#save changes to pokemon & redirect to home page
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find params[:id]
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		redirect_to trainer
	end

	def create
    	@pokemon = Pokemon.new(pokemon_params)
    	@pokemon.save
    	redirect_to @pokemon
	end



end