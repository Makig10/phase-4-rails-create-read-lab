class PlantsController < ApplicationController
   #GET  /plants
    def index
        plants=Plant.all
        render json: plants
    end
    #GET  /plants/:id
    def show
        specific_plant=Plant.find(params[:id])
        render json: specific_plant
    end
   # POST /plants
   def create
      new_plant = Plant.create(create_params)
      render json: new_plant, status: :created
   end
  
  private
  
  def create_params
    params.permit(:name, :age, :price)
  end 

    
    
end
