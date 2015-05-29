class Lifter < ActiveRecord::Base
  has_many :one_rep_maxes, :dependent => :destroy
end
