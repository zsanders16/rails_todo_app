class DescriptionsController < ApplicationController
  
  def welcome
  end
  

  def index
    @descriptions = Description.all
  end

  def show
    @description = Description.find(params[:id])
  end

  def new
    @description = Description.new
  end

  def create
    @description = Description.new(description_params)
    if @description.save
      redirect_to descriptions_path
    else
      redirect :new
    end
    
  end
  

  def edit
    @description = Description.find(params[:id])
  end

  def update
    @description = Description.find(params[:id])
    if @description.update(description_params)
      redirect_to descriptions_path
    else
      render :edit
    end
    
  end
  

  def destroy
    @description = Description.find(params[:id])
    @description.destroy
    redirect_to descriptions_path
  end

  private
    def description_params
      params.require(:description).permit(:description)
    end
  
  
end
