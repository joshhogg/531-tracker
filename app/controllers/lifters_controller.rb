class LiftersController < ApplicationController
  
  def index
    @lifters = Lifter.all
  end
end
