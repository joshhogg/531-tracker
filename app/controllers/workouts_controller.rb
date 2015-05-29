class WorkoutsController < ApplicationController
  protect_from_forgery with: :exception
  
  def show
    @maxes = OneRepMax.find(params[:one_rep_max_id])
    @table = LiftCalculator.new(@maxes).lift_table
  end
  
end
