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


end