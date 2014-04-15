require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response 200
  end

  test "should get done tasks" do
    get :done_tasks
    assert_response 200
  end
  
  test "should create task" do
    post :create, task: {
      description: "Play games",
      start: "02/03/2014"
    }
    assert_response 302
  end
  
  test "should NOT create task" do
    post :create, task: {
      start: "02/03/2014"
    }
    assert_response 200
  end
end
