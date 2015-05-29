class OneRepMax < ActiveRecord::Base
  belongs_to :lifter
  validates_presence_of :deadlift, :squat, :benchpress, :overheadpress
end
