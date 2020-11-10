class PetsController < ApplicationController
  # GET /pets
  def index
    @pets = Pet.all
  end # render index.html.erb

  # GET /pets/:id (ex: /pets/42) -> {id: 42}
  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end # render new.html.erb

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new # render "new.html.erb"
    end
  end

  # GET /pets/:id/edit {id: 42}
  def edit
    @pet = Pet.find(params[:id])
  end

  # PATCH /pets/:id
  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  # DELETE /pets/:id
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
