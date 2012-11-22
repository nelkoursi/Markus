require 'migration_helpers'

class RubricCriterionAssignment < ActiveRecord::Migration

  extend MigrationHelpers

  def self.up

    create_table :rubric_criterion_assignment_association do |t|
      t.column    :criterion_id,   :integer, :null => false
      t.column    :assignment_id,   :int, :null => false
      t.timestamps
    end

    foreign_key_no_delete :rubric_criterion_assignment_association, :criterion_id,  :rubric_criteria
    foreign_key_no_delete :rubric_criterion_assignment_association, :assignment_id,  :assignments

    add_column :rubric_criteria, :reusable, :boolean, :null => false
    add_column :rubric_criteria, :is_skill, :boolean, :null => false

    
  end

  def self.down
    
    remove_column :rubric_criteria, :reusable
    remove_column :rubric_criteria, :is_skill
    
    delete_foreign_key :rubric_criterion_assignment_association, :rubric_criteria
    delete_foreign_key :rubric_criterion_assignment_association, :assignments
    drop_table :rubric_criterion_assignment_association

  end
end
