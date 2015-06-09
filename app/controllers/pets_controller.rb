class PetsController < ApplicationController


  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(name: params[:name], breed: params[:breed], gender: params[:gender])
    #@pet.store_id = 
    @pet.save
    redirect_to stores_path
  end
end
