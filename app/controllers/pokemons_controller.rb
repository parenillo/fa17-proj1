class PokemonsController < ApplicationController
	def capture
		pokemon_id = params[:id]
		pokemon = Pokemon.find(pokemon_id)
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to '/'
	end
	def damage
		pokemon_id = params[:id]
		pokemon = Pokemon.find(pokemon_id)
		pokemon.health -= 10
		if pokemon.health <= 0
			pokemon.destroy
		else
			pokemon.save
		end
		redirect_to trainer_path(pokemon.trainer_id)
	end
	def new
		@pokemon = Pokemon.new
	end
	def create
		@pokemon = Pokemon.create(name: params[:pokemon][:name], health: 100, level: 1, trainer_id: current_trainer.id)
		if @pokemon.valid?
			redirect_to trainer_path(current_trainer)
		else
			redirect_to '/pokemon/new'
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end
	def heal
		pokemon_id = params[:id]
		pokemon = Pokemon.find(pokemon_id)
		pokemon.health += 10

	end
end


