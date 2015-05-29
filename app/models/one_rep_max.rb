class OneRepMax < ActiveRecord::Base
  belongs_to :lifter
  
  attr_accessor :deadlift_reps, :squat_reps, :benchpress_reps, :overheadpress_reps
  attr_accessor :deadlift_wt, :squat_wt, :benchpress_wt, :overheadpress_wt
  
  before_validation :calculate_one_rep_max
  validates_presence_of :deadlift, :squat, :benchpress, :overheadpress

  
  private
    def calculate_one_rep_max
      if deadlift_reps.to_i != 1
        self.deadlift = deadlift_wt.to_i * deadlift_reps.to_i * 0.0333 + deadlift_wt.to_i
      else
        self.deadlift = deadlift_wt.to_i
      end
      
      if squat_reps.to_i != 1
        self.squat = squat_wt.to_i * squat_reps.to_i * 0.0333 + squat_wt.to_i
      else
        self.squat = squat_wt.to_i
      end
      
      if benchpress_reps.to_i != 1
        self.benchpress = benchpress_wt.to_i * benchpress_reps.to_i * 0.0333 + benchpress_wt.to_i
      else
        self.benchpress = benchpress_wt.to_i
      end
      
      if overheadpress_reps.to_i != 1
        self.overheadpress = overheadpress_wt.to_i * overheadpress_reps.to_i * 0.0333 + overheadpress_wt.to_i
      else
        self.overheadpress = overheadpress_wt.to_i
      end
      
    end
    
    
end
