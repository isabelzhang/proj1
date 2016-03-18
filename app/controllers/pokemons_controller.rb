class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to :root
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
    if @pokemon.health <= 0
      @pokemon.health += 10
    else
      @pokemon.health -= 10
    end
    @pokemon.save
  	redirect_to :back
  end

  def heal
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health += 10
    @pokemon.save
    redirect_to :back
  end

  def new
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer = current_trainer
    saved = @pokemon.save
    if saved
      redirect_to trainer_path(@current_trainer.id)
    else
      redirect_to pokemon_new_path, :flash => { :error => "Pokemon on the loose! Better go try to catch it again."}
    end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name) #Returns a hash that was the value of "name" and "email" from the value of "user" in params.
  end

end

