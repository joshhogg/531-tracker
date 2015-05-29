class LiftCalculator
  
  def initialize(one_rep_maxes)
    @one_rep_maxes = one_rep_maxes
  end
  
  #Takes in 1 rep max, the week (1-4), lift type and percentage
  def calculate_weight(day, percentage)
    if day == 1 #overheadpress
      @one_rep_maxes.overheadpress*percentage
    elsif day == 2 #deadlift
      @one_rep_maxes.deadlift*percentage
    elsif day == 3 #benchpress
      @one_rep_maxes.benchpress*percentage
    elsif day == 4 #squats
      @one_rep_maxes.squat*percentage
    end
  end
  
  def lift_percentages(week)
    if week == 1
      [0.4, 0.5, 0.6, 0.65, 0.75, 0.85]
    elsif week == 2
      [0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
    elsif week == 3
      [0.4, 0.5, 0.6, 0.75, 0.85, 0.95]
    elsif week == 4
      [0.4, 0.5, 0.6, 0.40, 0.50, 0.60]
    end
  end
  
  def lift_reps(week)
    if week == 1
      [5, 5, 3, 5, 5, 5]
    elsif week == 2
      [5, 5, 3, 3, 3, 3]
    elsif week == 3
      [5, 5, 3, 5, 3, 1]
    elsif week == 4
      [5, 5, 3, 5, 5, 5]
    end
  end
  
  def lift_table

    table = []
    (1..4).each do |week|
      week_table = []
      (1..4).each do |day|
        day_column = []
        column_values = lift_percentages(week).zip lift_reps(week)
        column_values.each do |percent, reps|
          day_column.push("#{nearest_5(calculate_weight(day, percent).to_i)} x #{reps}")
        end
        week_table.push(day_column)
      end
    table.push(week_table)
    end
    return table
  end
  
  def nearest_5 weight
    
    remainder = weight % 5
    
    if remainder >= 3 
      weight + 5 - remainder
    else
      weight - remainder
    end
  end
  
end