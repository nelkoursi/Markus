# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'migration_helpers'

class RubricCriterionAssignment < ActiveRecord::Migration

  extend MigrationHelpers

  def self.up

    create_table :rubric_criterion_assignment_association do |t|
      t.column    :rubric_criterion_name,   :string, :null => false
      t.column    :assignment_id,   :int, :null => false
      t.timestamps
    end

    foreign_key_no_delete :rubric_criterion_assignment_association, :rubric_criterion_name,  :rubric_criteria
    foreign_key_no_delete :rubric_criterion_assignment_association, :assignment_id,  :assignments

    add_column :rubric_criteria, :is_cross_skill, :boolean, :null => false
    add_column :rubric_criteria, :is_skill, :boolean, :null => false
    add_column :rubric_criteria, :is_objective, :boolean, :null => false
   
  end

  def self.down
    
    remove_column :rubric_criteria, :is_cross_skill
    remove_column :rubric_criteria, :is_skill
    remove_column :rubric_criteria, :is_objective
    
    delete_foreign_key :rubric_criterion_assignment_association, :rubric_criteria
    delete_foreign_key :rubric_criterion_assignment_association, :assignments
    drop_table :rubric_criterion_assignment_association

  end
end
