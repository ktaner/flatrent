class PropertiesController < ApplicationController


  def new
    @property = Property.new
  end

  def create
    # params == {:property => {:headline => "hl",
    #                        :description => "..."}}
    @property = Property.new(property_params)
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
  end

  def index
    @properties = Property.all
  end

  def destroy
  end

private

  def property_params
    params.require(:property).permit(
                :headline,
                :description,
                :address,
                :price)
  end


end
