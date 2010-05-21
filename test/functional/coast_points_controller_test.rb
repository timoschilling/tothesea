require File.dirname(__FILE__) + '/../test_helper'
require 'coast_points_controller'

# Re-raise errors caught by the controller.
class CoastPointsController; def rescue_action(e) raise e end; end

class CoastPointsControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:coast_points)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_coast_point
    old_count = CoastPoint.count
    post :create, :coast_point => { }
    assert_equal old_count + 1, CoastPoint.count

    assert_redirected_to coast_point_path(assigns(:coast_point))
  end

  def test_should_show_coast_point
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_coast_point
    put :update, :id => 1, :coast_point => { }
    assert_redirected_to coast_point_path(assigns(:coast_point))
  end

  def test_should_destroy_coast_point
    old_count = CoastPoint.count
    delete :destroy, :id => 1
    assert_equal old_count-1, CoastPoint.count

    assert_redirected_to coast_points_path
  end
end
