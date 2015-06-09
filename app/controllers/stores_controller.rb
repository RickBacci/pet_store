class StoresController < ApplicationController


  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
    @pet = Pet.new
    @pet.store_id = @store.id
  end

  def new
    
  end
end
