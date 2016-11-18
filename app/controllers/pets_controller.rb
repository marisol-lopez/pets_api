class PetsController < ApplicationController

  def index
    pets = Pet.all
    pets = pets.to_json
    respond_to do |format|
      format.json {render :json => pets, :callback => params[:callback]}
    end
  end

  def show
    pet = Pet.find(params[:id])
    render json: pet
  end

  def call_dibs
    pet = Pet.find(params[:id])
    unless pet.dibs = true
      pet.dibs = true
      message = "#{pet.name} is all yours!"
    else
      message = "Pet already has been dibbed!"
    end
  end

end
