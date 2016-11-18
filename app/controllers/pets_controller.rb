class PetsController < ApplicationController

  def index
    pets = Pet.all
    render :json => pets.to_json, :callback => params['callback']
  end

  def show
    pet = Pet.find(params[:id])

    render :json => pet.to_json, :callback => params['callback']
  end

  def call_dibs
    pet = Pet.find(params[:id])
    unless pet.dibs = true
      pet.dibs = true

      render :json => pet.to_json, :callback => params['callback']
    else
      render :json => [], :callback => params['callback'], :status => :no_content
    end
  end

end
