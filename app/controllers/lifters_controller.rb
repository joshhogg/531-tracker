class LiftersController < ApplicationController
  def new
  end
  
  def index
    @lifters = Lifter.all
  end
end
