class PetsController < ApplicationController

  def index
    pets = Pet.all
    render :json => pets.to_json, :callback => params['callback'],
      :status => :ok
  end

  def show
    pet = Pet.find(params[:id])

    render :json => pet.to_json, :callback => params['callback'],
      :status => :ok
  end

  def dibs
    pet = Pet.find(params[:id])
    unless pet.owner
      pet.owner = params[:owner]
      if pet.save
        render :json => pet.to_json, :callback => params['callback'],
      :status => :ok
      end
    else
      render :json => [], :callback => params['callback'], :status => :no_content
    end
  end

end
