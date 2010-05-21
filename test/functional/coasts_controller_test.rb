require File.dirname(__FILE__) + '/../test_helper'
require 'coasts_controller'

# Re-raise errors caught by the controller.
class CoastsController; def rescue_action(e) raise e end; end

class CoastsControllerTest < ActionController::TestCase

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:coasts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_coast
    old_count = Coast.count
    post :create, :coast => { }
    assert_equal old_count + 1, Coast.count

    assert_redirected_to coast_path(assigns(:coast))
  end

  def test_should_show_coast
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_coast
    put :update, :id => 1, :coast => { }
    assert_redirected_to coast_path(assigns(:coast))
  end

  def test_should_destroy_coast
    old_count = Coast.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Coast.count

    assert_redirected_to coasts_path
  end
end
