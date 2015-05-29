class OneRepMaxesController < ApplicationController
  
  def show
  end
  
  def index
    @lifter = find_lifter
    @maxes = @lifter.one_rep_maxes.order('created_at DESC')
  end
  
  def new
    @lifter = find_lifter
    @previous_max = @lifter.one_rep_maxes.last
    @max = @lifter.one_rep_maxes.new
  end
  
  def create
    #modify this code to later either update the previous entry from that day
    #or create the entry if its the first on that day
    #this will require allowing the user to select the date they got the lift at
    #first_or_create!
    #@entry = Entry.where(created_at: Time.now.beginning_of_day.utc..Time.now.end_of_day.utc).first_or_create!
    #@entry.update_attributes(entry_params)
    @lifter = find_lifter
    @max = @lifter.one_rep_maxes.new(one_rep_max_params)
    @max.save
    redirect_to lifter_one_rep_maxes_path(@lifter)
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    
    def one_rep_max_params
      params.require(:one_rep_max).permit(:deadlift, :squat, :benchpress, :overheadpress)
    end

  
    def find_lifter
      Lifter.find(params[:lifter_id])
    end
 
end
