# To change this template, choose Tools | Templates
# and open the template in the editor.

class AddRubricLevels
def self.up
    add_column :rubric_criteria, :level_0_name, :text
    add_column :rubric_criteria, :level_0_description, :text
    add_column :rubric_criteria, :level_1_name, :text
    add_column :rubric_criteria, :level_1_description, :text
    add_column :rubric_criteria, :level_2_name, :text
    add_column :rubric_criteria, :level_2_description, :text
    add_column :rubric_criteria, :level_3_name, :text
    add_column :rubric_criteria, :level_3_description, :text
    add_column :rubric_criteria, :level_4_name, :text
    add_column :rubric_criteria, :level_4_description, :text
    add_column :rubric_criteria, :level_5_name, :text
    add_column :rubric_criteria, :level_5_description, :text
    add_column :rubric_criteria, :level_6_name, :text
    add_column :rubric_criteria, :level_6_description, :text
    add_column :rubric_criteria, :level_7_name, :text
    add_column :rubric_criteria, :level_7_description, :text
    add_column :rubric_criteria, :level_8_name, :text
    add_column :rubric_criteria, :level_8_description, :text
    add_column :rubric_criteria, :level_9_name, :text
    add_column :rubric_criteria, :level_9_description, :text
    add_column :rubric_criteria, :level_10_name, :text
    add_column :rubric_criteria, :level_10_description, :text
    add_column :rubric_criteria, :level_11_name, :text
    add_column :rubric_criteria, :level_11_description, :text
    add_column :rubric_criteria, :level_12_name, :text
    add_column :rubric_criteria, :level_12_description, :text
    add_column :rubric_criteria, :level_13_name, :text
    add_column :rubric_criteria, :level_13_description, :text
    add_column :rubric_criteria, :level_14_name, :text
    add_column :rubric_criteria, :level_14_description, :text
    add_column :rubric_criteria, :level_15_name, :text
    add_column :rubric_criteria, :level_15_description, :text
    add_column :rubric_criteria, :level_16_name, :text
    add_column :rubric_criteria, :level_16_description, :text
    add_column :rubric_criteria, :level_17_name, :text
    add_column :rubric_criteria, :level_17_description, :text
    add_column :rubric_criteria, :level_18_name, :text
    add_column :rubric_criteria, :level_18_description, :text
    add_column :rubric_criteria, :level_19_name, :text
    add_column :rubric_criteria, :level_19_description, :text
  end

  def self.down
    remove_column :rubric_criteria, :level_0_name
    remove_column :rubric_criteria, :level_0_description
    remove_column :rubric_criteria, :level_1_name
    remove_column :rubric_criteria, :level_1_description
    remove_column :rubric_criteria, :level_2_name
    remove_column :rubric_criteria, :level_2_description
    remove_column :rubric_criteria, :level_3_name
    remove_column :rubric_criteria, :level_3_description
    remove_column :rubric_criteria, :level_4_name
    remove_column :rubric_criteria, :level_4_description
    remove_column :rubric_criteria, :level_5_name, :text
    remove_column :rubric_criteria, :level_5_description, :text
    remove_column :rubric_criteria, :level_6_name, :text
    remove_column :rubric_criteria, :level_6_description, :text
    remove_column :rubric_criteria, :level_7_name, :text
    remove_column :rubric_criteria, :level_7_description, :text
    remove_column :rubric_criteria, :level_8_name, :text
    remove_column :rubric_criteria, :level_8_description, :text
    remove_column :rubric_criteria, :level_9_name, :text
    remove_column :rubric_criteria, :level_9_description, :text
    remove_column :rubric_criteria, :level_10_name, :text
    remove_column :rubric_criteria, :level_10_description, :text
    remove_column :rubric_criteria, :level_11_name, :text
    remove_column :rubric_criteria, :level_11_description, :text
    remove_column :rubric_criteria, :level_12_name, :text
    remove_column :rubric_criteria, :level_12_description, :text
    remove_column :rubric_criteria, :level_13_name, :text
    remove_column :rubric_criteria, :level_13_description, :text
    remove_column :rubric_criteria, :level_14_name, :text
    remove_column :rubric_criteria, :level_14_description, :text
    remove_column :rubric_criteria, :level_15_name, :text
    remove_column :rubric_criteria, :level_15_description, :text
    remove_column :rubric_criteria, :level_16_name, :text
    remove_column :rubric_criteria, :level_16_description, :text
    remove_column :rubric_criteria, :level_17_name, :text
    remove_column :rubric_criteria, :level_17_description, :text
    remove_column :rubric_criteria, :level_18_name, :text
    remove_column :rubric_criteria, :level_18_description, :text
    remove_column :rubric_criteria, :level_19_name, :text
    remove_column :rubric_criteria, :level_19_description, :text
  end
end
