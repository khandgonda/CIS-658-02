require 'test_helper'

class BugTest < ActiveSupport::TestCase
  def setup
    @bug = Bug.create(title: "a title", description: "This is a normal text just for testing this out", issue_type: 1, priority: 2, status: 0)
  end


  test "Bug must be valid" do
    assert @bug.valid?
  end

  test "Title must be present" do
    @bug.title = ""
    assert_not @bug.valid?
  end

  test "Description must be present" do
    @bug.description = ""
    assert_not @bug.valid?
  end


test "issue_type must be valid" do
  invalid_issue_types = [-10, -1, 2, 10]
  invalid_issue_types.each do |ist|
    begin
      @bug.issue_type = ist
      assert false, "#{ist} should be invalid"
    rescue
      assert true
    end
  end
end

test "issue_type must be published or unpublished" do
  valid_issue_types = [:issue, :enhancement, :feature]
  valid_issue_types.each do |vst|
    begin
      @bug.issue_types = vst
      assert true
    rescue
      assert false, "#{vst} should be invalid"
    end
  end
end

  test "priority must be valid" do
    invalid_priorities = [-10, -1, 2, 10]
    invalid_priorities.each do |ip|
      begin
        @bug.priority = ip
        assert false, "#{ip} should be invalid"
      rescue
        assert true
      end
    end
  end

  test "priority must be published or unpublished" do
    valid_priorities = [:low, :medium, :high]
    valid_priorities.each do |vp|
      begin
        @bug.priority = vp
        assert true
      rescue
        assert false, "#{vp} should be invalid"
      end
    end
  end

  test "status must be valid" do
    invalid_statuses = [-10, -1, 2, 10]
    invalid_statuses.each do |is|
      begin
        @bug.status = is
        assert false, "#{is} should be invalid"
      rescue
        assert true
      end
    end
  end

  test "status must be published or unpublished" do
    valid_statuses = [:open, :closed, :monitor]
    valid_statuses.each do |is|
      begin
        @bug.status = is
        assert true
      rescue
        assert false, "#{is} should be invalid"
      end
    end
  end
end
