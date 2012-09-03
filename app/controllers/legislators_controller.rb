class LegislatorsController < ApplicationController
  # include Kernel
  def index
    # @legislator = Legislator.search(params[:search])
    @legislator = Legislator.find_by_lastname(params[:lastname])
    # @legislators = Legislator.find(:all, :conditions => ['lastname LIKE ?', "%#{params[:search]}%"])
  end
  
  def show
    @legislator = Legislator.find_by_lastname(params[:lastname])
    # @contribution = 
    # @legislator = Legislator.find_by_lastname("Ellison")
  end

  def new
    # @legislator = Legislator.find_by_lastname(:lastname)
  end

  def create 
    # @legislator = Legislator.find_by_lastname(:lastname)
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  def return_legislators
    # @legislators = Legislator.order(:lastname).where("lastname like ?", "%#{params[:term]}%")
    #     audit(@legislators)
    #     render json: @legislators.map(&:lastname)
  end
end
