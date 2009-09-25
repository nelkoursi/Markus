require File.dirname(__FILE__) + '/../test_helper'
require 'shoulda'

 class SubmissionFileTest < ActiveSupport::TestCase
   def setup
     setup_group_fixture_repos
   end
  
  # Ensure that the the following relationship exists
  context "An existing SubmissionFile" do       
    should_belong_to :submission
    should_have_many :annotations
 
    should_validate_presence_of :submission
    should_validate_presence_of :filename
    should_validate_presence_of :path
  end
  
  context "A SubmissionFile without parameter and without id" do
    setup do
      @submissionfile = SubmissionFile.new
    end
       
    should "be invalid and should not be saved" do
      assert !@submissionfile.valid?
      assert !@submissionfile.save
    end
  end
  
  context "A SubmissionFile without parameter" do
    setup do
      @submissionfile = SubmissionFile.new
      @submissionfile.submission_id = 1
    end
       
    should "be invalid and should not be saved" do
      assert !@submissionfile.valid?
      assert !@submissionfile.save
    end
  end

  context "A SubmissionFile without filename" do
    setup do
      @submissionfile = SubmissionFile.new(:filename => "",
                                           :path     => "path")
      @submissionfile.submission_id = 1
    end
       
    should "be invalid and should not be saved" do
      assert !@submissionfile.valid?
      assert !@submissionfile.save
    end
  end

  context "A SubmissionFile without path" do
    setup do
      @submissionfile = SubmissionFile.new(:filename => "filaname",
                                           :path     => "")
      @submissionfile.submission_id = 1
    end
       
    should "be invalid and should not be saved" do
      assert !@submissionfile.valid?
      assert !@submissionfile.save
    end
  end
      
  context "A SubmissionFile with filename and path, but without id" do
    setup do
      @submissionfile = SubmissionFile.new(:filename => "filaname",
                                           :path     => "path")
    end
       
    should "be invalid and should not be saved" do
      assert !@submissionfile.valid?
      assert !@submissionfile.save
    end
  end

  context "A .java Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename.java",
                                           :path       => "path")
      @submissionfile.submission_id = 1
    end
    
    should "return java" do
      assert_equal('java', @submissionfile.get_file_type)
    end
  end

  context "A .rb Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename.rb",
                                           :path       => "path")
      @submissionfile.submission_id = 1
    end
    
    should "return ruby" do
      assert_equal('ruby', @submissionfile.get_file_type)
    end
  end

  context "A .py Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename.py",
                                           :path       => "path")
      @submissionfile.submission_id = 1
    end
    
    should "return python" do
      assert_equal('python', @submissionfile.get_file_type)
    end
  end
  
  context "A .js Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename.js",
                                           :path       => "path")
      @submissionfile.submission_id = 1
    end
    
    should "return javascript" do
      assert_equal('javascript', @submissionfile.get_file_type)
    end
  end
  
  context "A .c Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename.c",
                                           :path       => "path")
      @submissionfile.submission_id = 1
    end
    
    should "return c" do
      assert_equal('c', @submissionfile.get_file_type)
    end
  end

  context "A no extension Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename",
                                           :path       => "path")
      @submissionfile.submission_id = 1
    end
    
    should "return a unknown file extension" do
      assert_equal('unknown', @submissionfile.get_file_type)
    end
  end

  context "An unknown Submission file" do
    setup do
      @submissionfile = SubmissionFile.new(:filename   => "filename.toto",
                                           :path       => "path")
      @submissionfile.submission_id = 1      
    end
    
    should "return a unknown file extension" do
      assert_equal('unknown', @submissionfile.get_file_type)
    end
  end
  
  context "A binary content" do
    
    should "return true" do
      assert SubmissionFile.is_binary?('���� JFIF  ` `  �� C 		')
    end
  end
  
  context "A non binary content" do
    
    should "return false" do
      assert !SubmissionFile.is_binary?('Non binary content')
    end
  end
  
  
  def teardown
    destroy_repos
  end
end
