class PetsController < ApplicationController

  def index
    pets = Pet.all

    render :json => pets.to_json, :callback => params['callback']
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
