class PropertiesController < ApplicationController


  def new
    @property = Property.new
  end

  def create
  end

  def show
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
  end

  def index
  end

  def destroy
  end




end
