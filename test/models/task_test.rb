require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "list only done tasks" do
    done = Task.done.pluck(:done)
    assert done.size == 1 and done[0] == true
  end
   
  test "list only to do tasks" do
    done = Task.done.pluck(:done)
    assert done.size == 1 and done[0] == false
  end
end
