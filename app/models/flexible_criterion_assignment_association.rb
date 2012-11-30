# To change this template, choose Tools | Templates
# and open the template in the editor.

class FlexibleCriterionAssignmentAssociation < ActiveRecord::Base

  belongs_to :assignment
  belongs_to :flexible_criterion
  
end
