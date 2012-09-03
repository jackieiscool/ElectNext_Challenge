class LegislatorsController < ApplicationController
  def index
    @legislator = Legislator.find_by_lastname(params[:lastname])
  end
  
  def show
    @legislator = Legislator.find_by_lastname(params[:lastname])
  end

  def new
  end

  def create 
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
