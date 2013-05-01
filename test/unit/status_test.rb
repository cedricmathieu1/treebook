require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires a content to be entered" do 
  status = Status.new
  assert !status.save
  assert !status.errors[:content].empty?
  end

  test "that status is at least 2 letter long" do
  	status = Status.new
  	status.content = "H"
  	assert !status.save
  	assert !status.errors[:content].empty?
  end

  test "that status has user_id" do
  	status = Status.new
  	status.content= "Hello"
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end
  
end
