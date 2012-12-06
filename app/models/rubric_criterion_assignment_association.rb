# To change this template, choose Tools | Templates
# and open the template in the editor.

class RubricCriterionAssignmentAssociation < ActiveRecord::Base
  
  belongs_to :assignment
  belongs_to :rubric_criterion
  
end
