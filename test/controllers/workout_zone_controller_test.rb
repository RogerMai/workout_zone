require 'test_helper'

class WorkoutZoneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workout_zone_index_url
    assert_response :success
  end

end
