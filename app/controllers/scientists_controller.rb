class ScientistsController < ApplicationController


  def index 
    scientists = Scientist.all
    render json: scientists, status: :ok
  end

  def show
    scientist = Scientist.find(params[:id])
    render json: scientist, serializer: ScientistSerializer, status: :ok
  end

  def create
    new_scientist = Scientist.create(new_scientist_params)
    render json: new_scientist, status: 201
  end

  def update 
    scientists = Scientist.find(params[:id])
    scientists.update!(new_scientist_params)
    render json: scientists, status: :accepted
  end

  def destroy
    scientists = Scientist.find(params[:id])
    scientists.destroy
    head :no_content
  end

  private

  def new_scientist_params
    params.permit(:name, :field_of_study,:avatar)
  end

end
