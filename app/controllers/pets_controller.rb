class PetsController < ApplicationController

  def index
    pets = Pet.all
    render :json => pets.to_json, :callback => params['callback']
  end

  def show
    pet = Pet.find(params[:id])

    render :json => pet.to_json, :callback => params['callback']
  end

  def dibs
    pet = Pet.find(params[:id])
    unless pet.owner
      pet.owner = params[:name]

      render :json => pet.to_json, :callback => params['callback']
    else
      render :json => [], :callback => params['callback'], :status => :no_content
    end
  end

end
