class RubricCriterionAssignmentAssociation < ActiveRecord::Base
  
  belongs_to :assignment
  belongs_to :rubric_criterion
  
end
