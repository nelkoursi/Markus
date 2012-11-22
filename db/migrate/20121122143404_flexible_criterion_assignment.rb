require 'migration_helpers'

class FlexibleCriterionAssignment < ActiveRecord::Migration

  extend MigrationHelpers

  def self.up

    create_table :flexible_criterion_assignment_association do |t|
      t.column    :criterion_id,   :integer, :null => false
      t.column    :assignment_id,   :int, :null => false
      t.timestamps
    end

    foreign_key_no_delete :flexible_criterion_assignment_association, :criterion_id,  :flexible_criteria
    foreign_key_no_delete :flexible_criterion_assignment_association, :assignment_id,  :assignments

    add_column :flexible_criteria, :reusable, :boolean, :null => false, :default => false
    add_column :flexible_criteria, :is_objective, :boolean, :null => false
   
  end

  def self.down
    
    remove_column :flexible_criteria, :reusable
    remove_column :flexible_criteria, :is_objective
    
    delete_foreign_key :flexible_criterion_assignment_association, :flexible_criteria
    delete_foreign_key :flexible_criterion_assignment_association, :assignments
    drop_table :flexible_criterion_assignment_association

  end
end

